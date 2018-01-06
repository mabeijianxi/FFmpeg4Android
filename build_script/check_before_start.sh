
### You need to make sure libx264 and fdk-aac are built.
if [ ! -d "./libx264/$BUILD_FOLDER_NAME/" ]; then
  echo "You need to make sure libx264 is built"
  exit
fi

if [ ! -d "./$FDK_AAC_DIR/$BUILD_FOLDER_NAME/" ]; then
  echo "You need to make sure fdk-aac is built"
  exit
fi
