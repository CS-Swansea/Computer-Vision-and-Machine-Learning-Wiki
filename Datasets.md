# Datasets

This page includes a list of curated publicly available datasets for machine learning and computer graphics research projects.

---

### Toy Image Datasets

Small scale image datasets useful for prototyping and experimentation. Datasets are small enough to fit in RAM without causing issues, even on small formfactor embedded and mobile devices, and on low power laptops.

| Dataset                | Description                                                  | Link                                             |
| :--------------------- | :----------------------------------------------------------- | :----------------------------------------------- |
| MNIST                  | Labeled `28x28` grayscale handwritten digits in `0-9` from `10` classes. | http://yann.lecun.com/exdb/mnist/                |
| notMNIST               | Labeled `28x28` grayscale images of letters in the range `A-J` from `10` classes sampled from publicly available fonts. | http://yaroslavvb.com/upload/notMNIST/           |
| Fashion MNIST          | Labeled `28x28` grayscale images of clothing ttems.          | https://github.com/zalandoresearch/fashion-mnist |
| CIFAR-10 and CIFAR-100 | `60,000` labelled `32x32` RGB images from `10` or `100` classes, respectively. | https://www.cs.toronto.edu/~kriz/cifar.html      |



---

### Image Datasets

| Dataset    | Description                                                  | Link                                             |
| :--------- | :----------------------------------------------------------- | :----------------------------------------------- |
| SVHN       | `~600,000` labeled `32x32` RGB images of Google Street View House Numbers. | http://ufldl.stanford.edu/housenumbers/          |
| ImageNet   | `~14 million` labeled RGB images with an average resolution of `469x387` from `1000` classes. [Human readable class names](https://gist.github.com/JossWhittle/005511f3b77a018b5381dd5c2f6b9a5b). | http://www.image-net.org/                        |
| Cityscapes | High resolution RGB images of drivers point of view within `50` different cities. `5000` images with fine segmentation masks, `20,000` with coarse segmentation masks. | https://www.cityscapes-dataset.com/              |
| CelebA     | `~200,000` annotated `178x218` RGB images of celebrity faces, cropped and aligned consistently. | http://mmlab.ie.cuhk.edu.hk/projects/CelebA.html |

---

### Mesh Datasets

| Dataset      | Description                                                  | Link                      |
| :----------- | :----------------------------------------------------------- | :------------------------ |
| ShapeNetCore | `51,300` 3D meshes labelled by `55` object categories.       | https://www.shapenet.org/ |
| ShapeNetSem  | `12,000` 3D meshes, sampled from ShapeNetCore, semantically labelled per triangle face into `270` component categories. | https://www.shapenet.org/ |