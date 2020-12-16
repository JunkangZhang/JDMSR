dng_path = 'E:/x3f_dng';
mat_path = 'E:/x3f_dng';

mkdir(mat_path);

fileinfo = dir(fullfile(dng_path, '*.dng'));

for i = 1:numel(fileinfo)
    filename = fullfile(dng_path, fileinfo(i).name);
    
    info = imfinfo(filename);
    t = Tiff(filename, 'r');
    offsets = getTag(t,'SubIFD');
    setSubDirectory(t,offsets(1));
    raw = read(t);
    close(t);
    
    meta_info = imfinfo(filename);
    x_origin = meta_info.SubIFDs{1}.ActiveArea(2)+1;
    y_origin = meta_info.SubIFDs{1}.ActiveArea(1)+1;
    try
        width = meta_info.SubIFDs{1}.DefaultCropSize(1);
        height = meta_info.SubIFDs{1}.DefaultCropSize(2);
    catch
        width = meta_info.SubIFDs{1}.ActiveArea(4) - meta_info.SubIFDs{1}.ActiveArea(2);
        height = meta_info.SubIFDs{1}.ActiveArea(3) - meta_info.SubIFDs{1}.ActiveArea(1);
    end
    
    if numel(meta_info.SubIFDs{1}.MaxSampleValue)==3
        raw =raw(y_origin:y_origin+height-1, x_origin:x_origin+width-1, :);
    else
        raw =raw(y_origin:y_origin+height-1, x_origin:x_origin+width-1);
    end
    
    save(fullfile(mat_path, [fileinfo(i).name(1:end-3), 'mat']), 'raw');
    fprintf('%s\n', filename);
end
