mode& = _NewImage(800, 600, 32)
Screen mode&
_FullScreen

imagename& = _LoadImage("image.jpg")
_PutImage (0, 0), imagename&
_FreeImage imagename&

