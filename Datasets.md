[Go Back to Index Page](./README.md)

# Datasets

This page includes a list of curated publicly available datasets for machine learning and computer graphics research projects.

---

### Academic Torrents - A Distributed Dataset Collection

**http://academictorrents.com/**

Hosting and distributing large datasets is cumbersome and expensive in storage and bandwidth costs. The torrent protocol for file transfer (while unfortunately synonymous with internet piracy and theft) actually offers a perfect solution to the problem of hosting and allowing access to extremely large datasets.

Once you have downloaded a dataset if you have the means and capacity you should seed for a reasonable amount of time to allow others to benefit from your having downloaded the data. 

#### Here are just a couple of the interesting datasets hosted there for download.

| Dataset                                   | Description                                                  | Link                                                         |
| :---------------------------------------- | :----------------------------------------------------------- | :----------------------------------------------------------- |
| Vincent van Gogh Paintings                | High resolution scans of Vincent van Gogh Paintings.         | [Link](http://academictorrents.com/details/c8b687c984d3d902310f27d56759ed69f5e1b4a7) |
| Arizona State University Twitter Data Set | A large dataset of twitter users, their friend and follower relationships, and connectivities based on tweets. | [Link](http://academictorrents.com/details/2399616d26eeb4ae9ac3d05c7fdd98958299efa9) |
| Mars Terrain Height Data                  | `46080x23040` high resolution mosaic of Martian terrain height data collected by the Mars Orbiter Laser Altimeter | [Link](http://academictorrents.com/details/06f73b5ca501194ba1cd3aa918bd801b84ea7050) |
| IARPA Functional Map of the World         | `2.69TB` of high resolution satellite imagery covering the entire globe. | [Link](http://academictorrents.com/details/22955ce4dbc3c73c254ba6196363667c0352d438) |

---

### Toy Image Datasets

Small scale image datasets useful for prototyping and experimentation. Datasets are small enough to fit in RAM without causing issues, even on small formfactor embedded and mobile devices, and on low power laptops. Useful for small scale image synthesis and classification.

| Dataset                | Description                                                  | Link                                             |
| :--------------------- | :----------------------------------------------------------- | :----------------------------------------------- |
| MNIST                  | Labelled `28x28` grayscale handwritten digits in `0-9` from `10` classes. | http://yann.lecun.com/exdb/mnist/                |
| notMNIST               | Labeled `28x28` grayscale images of letters in the range `A-J` from `10` classes sampled from publicly available fonts. | http://yaroslavvb.com/upload/notMNIST/           |
| Fashion MNIST          | Labelled `28x28` grayscale images of clothing items.         | https://github.com/zalandoresearch/fashion-mnist |
| CIFAR-10 and CIFAR-100 | `60,000` labelled `32x32` RGB images from `10` or `100` classes, respectively. | https://www.cs.toronto.edu/~kriz/cifar.html      |



---

### Image Datasets

Larger scale image datasets which are too big to fit in RAM. Loading data efficiently during training and inference will be vital when working with these. Useful for image synthesis, classification, and segmentation.

| Dataset    | Description                                                  | Link                                             |
| :--------- | :----------------------------------------------------------- | :----------------------------------------------- |
| SVHN       | `~600,000` labelled `32x32` RGB images of Google Street View House Numbers. | http://ufldl.stanford.edu/housenumbers/          |
| ImageNet   | `~14 million` labelled RGB images with an average resolution of `469x387` from `1000` classes. [Human readable class names](https://gist.github.com/JossWhittle/005511f3b77a018b5381dd5c2f6b9a5b). | http://www.image-net.org/                        |
| Cityscapes | High resolution RGB images of drivers point of view within `50` different cities. `5000` images with fine segmentation masks, `20,000` with coarse segmentation masks. | https://www.cityscapes-dataset.com/              |
| CelebA     | `~200,000` annotated `178x218` RGB images of celebrity faces, cropped and aligned consistently. Licensing and usage rights on this data is ambiguous or non-existent. | http://mmlab.ie.cuhk.edu.hk/projects/CelebA.html |
| FFHQ       | `70,000` RGB images of human faces at `1024x1024` resolution. All images are under a permissive license. **This dataset is the logical successor to CelebA due to quality and licensing.** | <https://github.com/NVlabs/ffhq-dataset>         |

---

### Mesh Datasets

Large scale dataset of 3D models of various common object types. Useful for mesh synthesis, classification, and segmentation. 

| Dataset      | Description                                                  | Link                      |
| :----------- | :----------------------------------------------------------- | :------------------------ |
| ShapeNetCore | `51,300` 3D meshes labelled by `55` object categories.       | https://www.shapenet.org/ |
| ShapeNetSem  | `12,000` 3D meshes, sampled from ShapeNetCore, semantically labelled per triangle face into `270` component categories. | https://www.shapenet.org/ |

---

### Mesh Datasets for Rendering Applications

Small scale but high quality (polycount) datasets of 3D models useful for testing rendering applications. The classic Utah Teapot, Stanford Bunny, Stanford Dragon, Buddha, and  Armadillo meshes can be found in these repositories. 

| Dataset                                                   | Description                                                  | Link                                                      |
| :-------------------------------------------------------- | :----------------------------------------------------------- | :-------------------------------------------------------- |
| The Stanford 3D Scanning Repository                       | High resolution 3D meshes created via laser scanning of figurines. Meshes are raw from scan and may require clean up! **Rendering a mesh with holes using a glass shader will allow light to leak out of the mesh without scattering properly.** | http://graphics.stanford.edu/data/3Dscanrep/              |
| McGuire Computer Graphics Archive                         | High quality curated models and scenes with texture and bump maps. | http://casual-effects.com/data/                           |
| Keenan's 3D Model Repository (Carnegie Mellon University) | Nice toy meshes and the occasional high resolution laser scan. | https://www.cs.cmu.edu/~kmcrane/Projects/ModelRepository/ |
| Large Geometric Models Archive (Georgia Tech)             | More high resolution scans.                                  | https://www.cc.gatech.edu/projects/large_models/          |