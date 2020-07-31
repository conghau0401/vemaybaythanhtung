<?php
/*
	if(isset($_REQUEST['fn'])){
		$file_name = $_REQUEST['fn'];
		$temp = explode('.', $file_name);
		$ext = end($temp);
		$stamp = imagecreatefrompng('watermark.png');
		if($ext == 'jpg' || $ext == 'jpeg' || $ext == 'JPG'){
			$im = imagecreatefromjpeg('img_data/images/'.$file_name);
		}
		else{
			$im = imagecreatefrompng('img_data/images/'.$file_name);
		}
		// Set the margins for the stamp and get the height/width of the stamp image
		$marge_right = 10;
		$marge_bottom = 150;
		$sx = imagesx($stamp);
		$sy = imagesy($stamp);
		// Copy the stamp image onto our photo using the margin offsets and the photo 
		// width to calculate positioning of the stamp. 
		imagecopy($im, $stamp, imagesx($im) - $sx - $marge_right, imagesy($im) - $sy - $marge_bottom, 0, 0, imagesx($stamp), imagesy($stamp));
		// Output and free memory
		header('Content-type: image/png');
		imagepng($im);
		imagedestroy($im);
	}
*/	

// .htaccess
	/*
 * This script places a watermark on a given jpeg, png or gif image.
 *
 * Use the script as follows in your HTML code:
 * <img src="watermark.php?image=image.jpg&watermark=watermark.png" />
 *
 * Visit http://www.htmlguard.com for more great scripts!
 */

  // loads a png, jpeg or gif image from the given file name
  function imagecreatefromfile($image_path) {
    // retrieve the type of the provided image file
    list($width, $height, $image_type) = getimagesize($image_path);

    // select the appropriate imagecreatefrom* function based on the determined
    // image type
    switch ($image_type)
    {
      case IMAGETYPE_GIF: return imagecreatefromgif($image_path); break;
      case IMAGETYPE_JPEG: return imagecreatefromjpeg($image_path); break;
      case IMAGETYPE_PNG: return imagecreatefrompng($image_path); break;
      default: return ''; break;
    }
  }

  // load source image to memory
  $image = imagecreatefromfile('img_data/images/'.$_GET['image']);
  if (!$image) die('Unable to open image');

  // load watermark to memory
  $watermark = imagecreatefromfile($_GET['watermark']);
  if (!$image) die('Unable to open watermark');

  // calculate the position of the watermark in the output image (the
  // watermark shall be placed in the lower right corner)
  $watermark_pos_x = imagesx($image) - imagesx($watermark) - 0;
  $watermark_pos_y = imagesy($image) - imagesy($watermark) - 10;

  // merge the source image and the watermark
  imagecopy($image, $watermark,  $watermark_pos_x, $watermark_pos_y, 0, 0,
    imagesx($watermark), imagesy($watermark));

  // output watermarked image to browser
    $info = new SplFileInfo('img_data/images/'.$_GET['image']);
 $extension= $info->getExtension();
  $extension=strtolower($extension);
 
 if($extension=='png'){
	header ('Content-Type: image/png');
    imagepng($image);//, '', 100);
	 
	 }
 if($extension=='jpg'||$extension=='jpeg'){

  header('Content-Type: image/jpeg');
  imagejpeg($image);  // use best image quality (100)
	 
	 }
	if($extension=='gif'){
			 
	header('Content-Type: image/gif');
	imagegif($image);
	 }

  // remove the images from memory
  imagedestroy($image);
  imagedestroy($watermark);


?>