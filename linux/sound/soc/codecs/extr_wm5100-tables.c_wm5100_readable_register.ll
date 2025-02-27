; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100-tables.c_wm5100_readable_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100-tables.c_wm5100_readable_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@WM5100_DSP1_PM_0 = common dso_local global i32 0, align 4
@WM5100_DSP1_PM_1535 = common dso_local global i32 0, align 4
@WM5100_DSP1_ZM_0 = common dso_local global i32 0, align 4
@WM5100_DSP1_ZM_2047 = common dso_local global i32 0, align 4
@WM5100_DSP1_DM_0 = common dso_local global i32 0, align 4
@WM5100_DSP1_DM_511 = common dso_local global i32 0, align 4
@WM5100_DSP2_PM_0 = common dso_local global i32 0, align 4
@WM5100_DSP2_PM_1535 = common dso_local global i32 0, align 4
@WM5100_DSP2_ZM_0 = common dso_local global i32 0, align 4
@WM5100_DSP2_ZM_2047 = common dso_local global i32 0, align 4
@WM5100_DSP2_DM_0 = common dso_local global i32 0, align 4
@WM5100_DSP2_DM_511 = common dso_local global i32 0, align 4
@WM5100_DSP3_PM_0 = common dso_local global i32 0, align 4
@WM5100_DSP3_PM_1535 = common dso_local global i32 0, align 4
@WM5100_DSP3_ZM_0 = common dso_local global i32 0, align 4
@WM5100_DSP3_ZM_2047 = common dso_local global i32 0, align 4
@WM5100_DSP3_DM_0 = common dso_local global i32 0, align 4
@WM5100_DSP3_DM_511 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm5100_readable_register(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %8 [
    i32 129, label %7
    i32 674, label %7
    i32 698, label %7
    i32 128, label %7
    i32 133, label %7
    i32 132, label %7
    i32 131, label %7
    i32 705, label %7
    i32 704, label %7
    i32 703, label %7
    i32 702, label %7
    i32 701, label %7
    i32 700, label %7
    i32 699, label %7
    i32 766, label %7
    i32 764, label %7
    i32 765, label %7
    i32 281, label %7
    i32 280, label %7
    i32 279, label %7
    i32 278, label %7
    i32 384, label %7
    i32 383, label %7
    i32 382, label %7
    i32 381, label %7
    i32 380, label %7
    i32 379, label %7
    i32 378, label %7
    i32 377, label %7
    i32 376, label %7
    i32 375, label %7
    i32 374, label %7
    i32 373, label %7
    i32 273, label %7
    i32 272, label %7
    i32 323, label %7
    i32 277, label %7
    i32 276, label %7
    i32 275, label %7
    i32 274, label %7
    i32 875, label %7
    i32 365, label %7
    i32 364, label %7
    i32 271, label %7
    i32 270, label %7
    i32 269, label %7
    i32 268, label %7
    i32 314, label %7
    i32 313, label %7
    i32 322, label %7
    i32 321, label %7
    i32 320, label %7
    i32 319, label %7
    i32 318, label %7
    i32 317, label %7
    i32 316, label %7
    i32 315, label %7
    i32 130, label %7
    i32 312, label %7
    i32 874, label %7
    i32 873, label %7
    i32 872, label %7
    i32 871, label %7
    i32 870, label %7
    i32 869, label %7
    i32 868, label %7
    i32 867, label %7
    i32 165, label %7
    i32 164, label %7
    i32 163, label %7
    i32 706, label %7
    i32 161, label %7
    i32 160, label %7
    i32 684, label %7
    i32 683, label %7
    i32 159, label %7
    i32 158, label %7
    i32 682, label %7
    i32 681, label %7
    i32 157, label %7
    i32 156, label %7
    i32 680, label %7
    i32 679, label %7
    i32 155, label %7
    i32 154, label %7
    i32 678, label %7
    i32 677, label %7
    i32 676, label %7
    i32 675, label %7
    i32 697, label %7
    i32 162, label %7
    i32 696, label %7
    i32 695, label %7
    i32 694, label %7
    i32 693, label %7
    i32 692, label %7
    i32 691, label %7
    i32 690, label %7
    i32 689, label %7
    i32 688, label %7
    i32 687, label %7
    i32 686, label %7
    i32 685, label %7
    i32 153, label %7
    i32 152, label %7
    i32 151, label %7
    i32 150, label %7
    i32 763, label %7
    i32 752, label %7
    i32 743, label %7
    i32 742, label %7
    i32 741, label %7
    i32 740, label %7
    i32 739, label %7
    i32 738, label %7
    i32 737, label %7
    i32 762, label %7
    i32 761, label %7
    i32 760, label %7
    i32 759, label %7
    i32 758, label %7
    i32 757, label %7
    i32 756, label %7
    i32 755, label %7
    i32 754, label %7
    i32 753, label %7
    i32 751, label %7
    i32 750, label %7
    i32 749, label %7
    i32 748, label %7
    i32 747, label %7
    i32 746, label %7
    i32 745, label %7
    i32 744, label %7
    i32 736, label %7
    i32 731, label %7
    i32 728, label %7
    i32 727, label %7
    i32 726, label %7
    i32 725, label %7
    i32 724, label %7
    i32 723, label %7
    i32 722, label %7
    i32 735, label %7
    i32 734, label %7
    i32 733, label %7
    i32 732, label %7
    i32 730, label %7
    i32 729, label %7
    i32 721, label %7
    i32 716, label %7
    i32 713, label %7
    i32 712, label %7
    i32 711, label %7
    i32 710, label %7
    i32 709, label %7
    i32 708, label %7
    i32 707, label %7
    i32 720, label %7
    i32 719, label %7
    i32 718, label %7
    i32 717, label %7
    i32 715, label %7
    i32 714, label %7
    i32 149, label %7
    i32 148, label %7
    i32 147, label %7
    i32 146, label %7
    i32 145, label %7
    i32 144, label %7
    i32 143, label %7
    i32 142, label %7
    i32 141, label %7
    i32 140, label %7
    i32 139, label %7
    i32 138, label %7
    i32 137, label %7
    i32 136, label %7
    i32 135, label %7
    i32 134, label %7
    i32 261, label %7
    i32 260, label %7
    i32 259, label %7
    i32 258, label %7
    i32 257, label %7
    i32 256, label %7
    i32 255, label %7
    i32 254, label %7
    i32 253, label %7
    i32 252, label %7
    i32 251, label %7
    i32 250, label %7
    i32 249, label %7
    i32 248, label %7
    i32 247, label %7
    i32 246, label %7
    i32 245, label %7
    i32 244, label %7
    i32 243, label %7
    i32 242, label %7
    i32 241, label %7
    i32 240, label %7
    i32 239, label %7
    i32 238, label %7
    i32 237, label %7
    i32 236, label %7
    i32 235, label %7
    i32 234, label %7
    i32 233, label %7
    i32 232, label %7
    i32 231, label %7
    i32 230, label %7
    i32 229, label %7
    i32 228, label %7
    i32 227, label %7
    i32 226, label %7
    i32 225, label %7
    i32 224, label %7
    i32 223, label %7
    i32 222, label %7
    i32 221, label %7
    i32 220, label %7
    i32 219, label %7
    i32 218, label %7
    i32 217, label %7
    i32 216, label %7
    i32 215, label %7
    i32 214, label %7
    i32 213, label %7
    i32 212, label %7
    i32 211, label %7
    i32 210, label %7
    i32 209, label %7
    i32 208, label %7
    i32 207, label %7
    i32 206, label %7
    i32 205, label %7
    i32 204, label %7
    i32 203, label %7
    i32 202, label %7
    i32 201, label %7
    i32 200, label %7
    i32 199, label %7
    i32 198, label %7
    i32 197, label %7
    i32 196, label %7
    i32 195, label %7
    i32 194, label %7
    i32 193, label %7
    i32 192, label %7
    i32 191, label %7
    i32 190, label %7
    i32 189, label %7
    i32 188, label %7
    i32 187, label %7
    i32 186, label %7
    i32 185, label %7
    i32 184, label %7
    i32 183, label %7
    i32 182, label %7
    i32 181, label %7
    i32 180, label %7
    i32 179, label %7
    i32 178, label %7
    i32 177, label %7
    i32 176, label %7
    i32 175, label %7
    i32 174, label %7
    i32 173, label %7
    i32 172, label %7
    i32 171, label %7
    i32 170, label %7
    i32 169, label %7
    i32 168, label %7
    i32 167, label %7
    i32 166, label %7
    i32 866, label %7
    i32 865, label %7
    i32 864, label %7
    i32 863, label %7
    i32 862, label %7
    i32 861, label %7
    i32 860, label %7
    i32 859, label %7
    i32 858, label %7
    i32 857, label %7
    i32 856, label %7
    i32 855, label %7
    i32 854, label %7
    i32 853, label %7
    i32 852, label %7
    i32 851, label %7
    i32 850, label %7
    i32 849, label %7
    i32 848, label %7
    i32 847, label %7
    i32 846, label %7
    i32 845, label %7
    i32 844, label %7
    i32 843, label %7
    i32 842, label %7
    i32 841, label %7
    i32 840, label %7
    i32 839, label %7
    i32 838, label %7
    i32 837, label %7
    i32 836, label %7
    i32 835, label %7
    i32 834, label %7
    i32 833, label %7
    i32 832, label %7
    i32 831, label %7
    i32 830, label %7
    i32 829, label %7
    i32 828, label %7
    i32 827, label %7
    i32 826, label %7
    i32 825, label %7
    i32 824, label %7
    i32 823, label %7
    i32 822, label %7
    i32 821, label %7
    i32 820, label %7
    i32 819, label %7
    i32 818, label %7
    i32 817, label %7
    i32 816, label %7
    i32 815, label %7
    i32 814, label %7
    i32 813, label %7
    i32 812, label %7
    i32 811, label %7
    i32 810, label %7
    i32 809, label %7
    i32 808, label %7
    i32 807, label %7
    i32 806, label %7
    i32 805, label %7
    i32 804, label %7
    i32 803, label %7
    i32 802, label %7
    i32 801, label %7
    i32 800, label %7
    i32 799, label %7
    i32 798, label %7
    i32 797, label %7
    i32 796, label %7
    i32 795, label %7
    i32 794, label %7
    i32 793, label %7
    i32 792, label %7
    i32 791, label %7
    i32 790, label %7
    i32 789, label %7
    i32 788, label %7
    i32 787, label %7
    i32 786, label %7
    i32 785, label %7
    i32 784, label %7
    i32 783, label %7
    i32 782, label %7
    i32 781, label %7
    i32 780, label %7
    i32 779, label %7
    i32 778, label %7
    i32 777, label %7
    i32 776, label %7
    i32 775, label %7
    i32 774, label %7
    i32 773, label %7
    i32 772, label %7
    i32 771, label %7
    i32 496, label %7
    i32 495, label %7
    i32 494, label %7
    i32 493, label %7
    i32 492, label %7
    i32 491, label %7
    i32 490, label %7
    i32 489, label %7
    i32 468, label %7
    i32 467, label %7
    i32 466, label %7
    i32 465, label %7
    i32 464, label %7
    i32 463, label %7
    i32 462, label %7
    i32 461, label %7
    i32 440, label %7
    i32 439, label %7
    i32 438, label %7
    i32 437, label %7
    i32 436, label %7
    i32 435, label %7
    i32 434, label %7
    i32 433, label %7
    i32 412, label %7
    i32 411, label %7
    i32 410, label %7
    i32 409, label %7
    i32 408, label %7
    i32 407, label %7
    i32 406, label %7
    i32 405, label %7
    i32 673, label %7
    i32 672, label %7
    i32 671, label %7
    i32 670, label %7
    i32 669, label %7
    i32 668, label %7
    i32 667, label %7
    i32 666, label %7
    i32 665, label %7
    i32 664, label %7
    i32 663, label %7
    i32 662, label %7
    i32 661, label %7
    i32 660, label %7
    i32 659, label %7
    i32 658, label %7
    i32 363, label %7
    i32 362, label %7
    i32 361, label %7
    i32 360, label %7
    i32 359, label %7
    i32 358, label %7
    i32 357, label %7
    i32 356, label %7
    i32 355, label %7
    i32 354, label %7
    i32 353, label %7
    i32 352, label %7
    i32 351, label %7
    i32 350, label %7
    i32 349, label %7
    i32 348, label %7
    i32 347, label %7
    i32 346, label %7
    i32 345, label %7
    i32 344, label %7
    i32 343, label %7
    i32 342, label %7
    i32 341, label %7
    i32 340, label %7
    i32 339, label %7
    i32 338, label %7
    i32 337, label %7
    i32 336, label %7
    i32 335, label %7
    i32 334, label %7
    i32 333, label %7
    i32 332, label %7
    i32 646, label %7
    i32 645, label %7
    i32 644, label %7
    i32 643, label %7
    i32 642, label %7
    i32 641, label %7
    i32 640, label %7
    i32 639, label %7
    i32 638, label %7
    i32 637, label %7
    i32 636, label %7
    i32 635, label %7
    i32 634, label %7
    i32 633, label %7
    i32 632, label %7
    i32 631, label %7
    i32 652, label %7
    i32 651, label %7
    i32 650, label %7
    i32 649, label %7
    i32 648, label %7
    i32 647, label %7
    i32 594, label %7
    i32 593, label %7
    i32 592, label %7
    i32 591, label %7
    i32 590, label %7
    i32 589, label %7
    i32 588, label %7
    i32 587, label %7
    i32 586, label %7
    i32 585, label %7
    i32 584, label %7
    i32 583, label %7
    i32 582, label %7
    i32 581, label %7
    i32 580, label %7
    i32 579, label %7
    i32 600, label %7
    i32 599, label %7
    i32 598, label %7
    i32 597, label %7
    i32 596, label %7
    i32 595, label %7
    i32 542, label %7
    i32 541, label %7
    i32 540, label %7
    i32 539, label %7
    i32 538, label %7
    i32 537, label %7
    i32 536, label %7
    i32 535, label %7
    i32 534, label %7
    i32 533, label %7
    i32 532, label %7
    i32 531, label %7
    i32 530, label %7
    i32 529, label %7
    i32 528, label %7
    i32 527, label %7
    i32 548, label %7
    i32 547, label %7
    i32 546, label %7
    i32 545, label %7
    i32 544, label %7
    i32 543, label %7
    i32 770, label %7
    i32 769, label %7
    i32 768, label %7
    i32 767, label %7
    i32 297, label %7
    i32 296, label %7
    i32 295, label %7
    i32 294, label %7
    i32 293, label %7
    i32 292, label %7
    i32 291, label %7
    i32 290, label %7
    i32 289, label %7
    i32 288, label %7
    i32 287, label %7
    i32 286, label %7
    i32 285, label %7
    i32 284, label %7
    i32 283, label %7
    i32 282, label %7
    i32 371, label %7
    i32 370, label %7
    i32 369, label %7
    i32 368, label %7
    i32 367, label %7
    i32 366, label %7
    i32 266, label %7
    i32 265, label %7
    i32 264, label %7
    i32 263, label %7
    i32 262, label %7
    i32 267, label %7
    i32 307, label %7
    i32 305, label %7
    i32 303, label %7
    i32 301, label %7
    i32 310, label %7
    i32 309, label %7
    i32 308, label %7
    i32 306, label %7
    i32 304, label %7
    i32 302, label %7
    i32 300, label %7
    i32 311, label %7
    i32 299, label %7
    i32 298, label %7
    i32 372, label %7
    i32 488, label %7
    i32 477, label %7
    i32 475, label %7
    i32 474, label %7
    i32 473, label %7
    i32 472, label %7
    i32 471, label %7
    i32 470, label %7
    i32 469, label %7
    i32 487, label %7
    i32 486, label %7
    i32 485, label %7
    i32 484, label %7
    i32 483, label %7
    i32 482, label %7
    i32 481, label %7
    i32 480, label %7
    i32 479, label %7
    i32 478, label %7
    i32 476, label %7
    i32 460, label %7
    i32 449, label %7
    i32 447, label %7
    i32 446, label %7
    i32 445, label %7
    i32 444, label %7
    i32 443, label %7
    i32 442, label %7
    i32 441, label %7
    i32 459, label %7
    i32 458, label %7
    i32 457, label %7
    i32 456, label %7
    i32 455, label %7
    i32 454, label %7
    i32 453, label %7
    i32 452, label %7
    i32 451, label %7
    i32 450, label %7
    i32 448, label %7
    i32 432, label %7
    i32 421, label %7
    i32 419, label %7
    i32 418, label %7
    i32 417, label %7
    i32 416, label %7
    i32 415, label %7
    i32 414, label %7
    i32 413, label %7
    i32 431, label %7
    i32 430, label %7
    i32 429, label %7
    i32 428, label %7
    i32 427, label %7
    i32 426, label %7
    i32 425, label %7
    i32 424, label %7
    i32 423, label %7
    i32 422, label %7
    i32 420, label %7
    i32 404, label %7
    i32 393, label %7
    i32 391, label %7
    i32 390, label %7
    i32 389, label %7
    i32 388, label %7
    i32 387, label %7
    i32 386, label %7
    i32 385, label %7
    i32 403, label %7
    i32 402, label %7
    i32 401, label %7
    i32 400, label %7
    i32 399, label %7
    i32 398, label %7
    i32 397, label %7
    i32 396, label %7
    i32 395, label %7
    i32 394, label %7
    i32 392, label %7
    i32 657, label %7
    i32 656, label %7
    i32 655, label %7
    i32 654, label %7
    i32 653, label %7
    i32 331, label %7
    i32 330, label %7
    i32 329, label %7
    i32 328, label %7
    i32 327, label %7
    i32 326, label %7
    i32 325, label %7
    i32 324, label %7
    i32 630, label %7
    i32 619, label %7
    i32 608, label %7
    i32 606, label %7
    i32 605, label %7
    i32 604, label %7
    i32 603, label %7
    i32 602, label %7
    i32 601, label %7
    i32 629, label %7
    i32 628, label %7
    i32 627, label %7
    i32 626, label %7
    i32 625, label %7
    i32 624, label %7
    i32 623, label %7
    i32 622, label %7
    i32 621, label %7
    i32 620, label %7
    i32 618, label %7
    i32 617, label %7
    i32 616, label %7
    i32 615, label %7
    i32 614, label %7
    i32 613, label %7
    i32 612, label %7
    i32 611, label %7
    i32 610, label %7
    i32 609, label %7
    i32 607, label %7
    i32 578, label %7
    i32 567, label %7
    i32 556, label %7
    i32 554, label %7
    i32 553, label %7
    i32 552, label %7
    i32 551, label %7
    i32 550, label %7
    i32 549, label %7
    i32 577, label %7
    i32 576, label %7
    i32 575, label %7
    i32 574, label %7
    i32 573, label %7
    i32 572, label %7
    i32 571, label %7
    i32 570, label %7
    i32 569, label %7
    i32 568, label %7
    i32 566, label %7
    i32 565, label %7
    i32 564, label %7
    i32 563, label %7
    i32 562, label %7
    i32 561, label %7
    i32 560, label %7
    i32 559, label %7
    i32 558, label %7
    i32 557, label %7
    i32 555, label %7
    i32 526, label %7
    i32 515, label %7
    i32 504, label %7
    i32 502, label %7
    i32 501, label %7
    i32 500, label %7
    i32 499, label %7
    i32 498, label %7
    i32 497, label %7
    i32 525, label %7
    i32 524, label %7
    i32 523, label %7
    i32 522, label %7
    i32 521, label %7
    i32 520, label %7
    i32 519, label %7
    i32 518, label %7
    i32 517, label %7
    i32 516, label %7
    i32 514, label %7
    i32 513, label %7
    i32 512, label %7
    i32 511, label %7
    i32 510, label %7
    i32 509, label %7
    i32 508, label %7
    i32 507, label %7
    i32 506, label %7
    i32 505, label %7
    i32 503, label %7
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 1, i32* %3, align 4
  br label %82

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @WM5100_DSP1_PM_0, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @WM5100_DSP1_PM_1535, align 4
  %15 = icmp ule i32 %13, %14
  br i1 %15, label %80, label %16

16:                                               ; preds = %12, %8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @WM5100_DSP1_ZM_0, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @WM5100_DSP1_ZM_2047, align 4
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %80, label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @WM5100_DSP1_DM_0, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @WM5100_DSP1_DM_511, align 4
  %31 = icmp ule i32 %29, %30
  br i1 %31, label %80, label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @WM5100_DSP2_PM_0, align 4
  %35 = icmp uge i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @WM5100_DSP2_PM_1535, align 4
  %39 = icmp ule i32 %37, %38
  br i1 %39, label %80, label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @WM5100_DSP2_ZM_0, align 4
  %43 = icmp uge i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @WM5100_DSP2_ZM_2047, align 4
  %47 = icmp ule i32 %45, %46
  br i1 %47, label %80, label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @WM5100_DSP2_DM_0, align 4
  %51 = icmp uge i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @WM5100_DSP2_DM_511, align 4
  %55 = icmp ule i32 %53, %54
  br i1 %55, label %80, label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @WM5100_DSP3_PM_0, align 4
  %59 = icmp uge i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @WM5100_DSP3_PM_1535, align 4
  %63 = icmp ule i32 %61, %62
  br i1 %63, label %80, label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @WM5100_DSP3_ZM_0, align 4
  %67 = icmp uge i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @WM5100_DSP3_ZM_2047, align 4
  %71 = icmp ule i32 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @WM5100_DSP3_DM_0, align 4
  %75 = icmp uge i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @WM5100_DSP3_DM_511, align 4
  %79 = icmp ule i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %68, %60, %52, %44, %36, %28, %20, %12
  store i32 1, i32* %3, align 4
  br label %82

81:                                               ; preds = %76, %72
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %80, %7
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
