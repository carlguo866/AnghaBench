; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_readable_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_readable_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @rt5665_readable_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5665_readable_register(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %8 [
    i32 202, label %7
    i32 131, label %7
    i32 130, label %7
    i32 448, label %7
    i32 294, label %7
    i32 365, label %7
    i32 364, label %7
    i32 244, label %7
    i32 392, label %7
    i32 391, label %7
    i32 251, label %7
    i32 464, label %7
    i32 462, label %7
    i32 309, label %7
    i32 308, label %7
    i32 307, label %7
    i32 421, label %7
    i32 420, label %7
    i32 419, label %7
    i32 418, label %7
    i32 417, label %7
    i32 416, label %7
    i32 415, label %7
    i32 456, label %7
    i32 455, label %7
    i32 457, label %7
    i32 453, label %7
    i32 454, label %7
    i32 162, label %7
    i32 266, label %7
    i32 157, label %7
    i32 163, label %7
    i32 267, label %7
    i32 158, label %7
    i32 363, label %7
    i32 362, label %7
    i32 161, label %7
    i32 265, label %7
    i32 156, label %7
    i32 505, label %7
    i32 160, label %7
    i32 252, label %7
    i32 155, label %7
    i32 478, label %7
    i32 477, label %7
    i32 447, label %7
    i32 446, label %7
    i32 234, label %7
    i32 238, label %7
    i32 237, label %7
    i32 236, label %7
    i32 235, label %7
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
    i32 463, label %7
    i32 503, label %7
    i32 270, label %7
    i32 269, label %7
    i32 243, label %7
    i32 242, label %7
    i32 241, label %7
    i32 240, label %7
    i32 293, label %7
    i32 217, label %7
    i32 216, label %7
    i32 220, label %7
    i32 219, label %7
    i32 218, label %7
    i32 215, label %7
    i32 214, label %7
    i32 458, label %7
    i32 393, label %7
    i32 442, label %7
    i32 441, label %7
    i32 321, label %7
    i32 318, label %7
    i32 315, label %7
    i32 507, label %7
    i32 506, label %7
    i32 323, label %7
    i32 322, label %7
    i32 143, label %7
    i32 142, label %7
    i32 141, label %7
    i32 140, label %7
    i32 139, label %7
    i32 138, label %7
    i32 137, label %7
    i32 136, label %7
    i32 399, label %7
    i32 223, label %7
    i32 222, label %7
    i32 491, label %7
    i32 486, label %7
    i32 485, label %7
    i32 484, label %7
    i32 483, label %7
    i32 482, label %7
    i32 481, label %7
    i32 480, label %7
    i32 479, label %7
    i32 490, label %7
    i32 450, label %7
    i32 449, label %7
    i32 367, label %7
    i32 366, label %7
    i32 274, label %7
    i32 273, label %7
    i32 489, label %7
    i32 488, label %7
    i32 487, label %7
    i32 213, label %7
    i32 314, label %7
    i32 320, label %7
    i32 319, label %7
    i32 317, label %7
    i32 316, label %7
    i32 401, label %7
    i32 400, label %7
    i32 305, label %7
    i32 304, label %7
    i32 303, label %7
    i32 302, label %7
    i32 301, label %7
    i32 300, label %7
    i32 306, label %7
    i32 398, label %7
    i32 397, label %7
    i32 396, label %7
    i32 395, label %7
    i32 394, label %7
    i32 390, label %7
    i32 389, label %7
    i32 272, label %7
    i32 292, label %7
    i32 145, label %7
    i32 144, label %7
    i32 313, label %7
    i32 312, label %7
    i32 311, label %7
    i32 310, label %7
    i32 517, label %7
    i32 516, label %7
    i32 515, label %7
    i32 221, label %7
    i32 511, label %7
    i32 510, label %7
    i32 513, label %7
    i32 512, label %7
    i32 509, label %7
    i32 508, label %7
    i32 504, label %7
    i32 299, label %7
    i32 298, label %7
    i32 297, label %7
    i32 296, label %7
    i32 295, label %7
    i32 443, label %7
    i32 423, label %7
    i32 422, label %7
    i32 452, label %7
    i32 451, label %7
    i32 475, label %7
    i32 473, label %7
    i32 472, label %7
    i32 471, label %7
    i32 470, label %7
    i32 469, label %7
    i32 468, label %7
    i32 467, label %7
    i32 466, label %7
    i32 474, label %7
    i32 128, label %7
    i32 461, label %7
    i32 445, label %7
    i32 444, label %7
    i32 239, label %7
    i32 164, label %7
    i32 224, label %7
    i32 459, label %7
    i32 460, label %7
    i32 465, label %7
    i32 129, label %7
    i32 135, label %7
    i32 134, label %7
    i32 133, label %7
    i32 132, label %7
    i32 476, label %7
    i32 153, label %7
    i32 152, label %7
    i32 151, label %7
    i32 150, label %7
    i32 149, label %7
    i32 148, label %7
    i32 147, label %7
    i32 146, label %7
    i32 250, label %7
    i32 249, label %7
    i32 248, label %7
    i32 247, label %7
    i32 246, label %7
    i32 245, label %7
    i32 159, label %7
    i32 271, label %7
    i32 268, label %7
    i32 154, label %7
    i32 170, label %7
    i32 169, label %7
    i32 168, label %7
    i32 167, label %7
    i32 166, label %7
    i32 165, label %7
    i32 264, label %7
    i32 263, label %7
    i32 262, label %7
    i32 261, label %7
    i32 260, label %7
    i32 259, label %7
    i32 258, label %7
    i32 257, label %7
    i32 256, label %7
    i32 255, label %7
    i32 254, label %7
    i32 253, label %7
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
    i32 331, label %7
    i32 330, label %7
    i32 329, label %7
    i32 328, label %7
    i32 327, label %7
    i32 326, label %7
    i32 325, label %7
    i32 388, label %7
    i32 385, label %7
    i32 384, label %7
    i32 383, label %7
    i32 382, label %7
    i32 381, label %7
    i32 380, label %7
    i32 379, label %7
    i32 387, label %7
    i32 386, label %7
    i32 378, label %7
    i32 375, label %7
    i32 374, label %7
    i32 373, label %7
    i32 372, label %7
    i32 371, label %7
    i32 370, label %7
    i32 369, label %7
    i32 368, label %7
    i32 377, label %7
    i32 376, label %7
    i32 233, label %7
    i32 232, label %7
    i32 231, label %7
    i32 230, label %7
    i32 229, label %7
    i32 228, label %7
    i32 227, label %7
    i32 226, label %7
    i32 225, label %7
    i32 183, label %7
    i32 179, label %7
    i32 178, label %7
    i32 177, label %7
    i32 176, label %7
    i32 175, label %7
    i32 174, label %7
    i32 173, label %7
    i32 172, label %7
    i32 182, label %7
    i32 181, label %7
    i32 180, label %7
    i32 440, label %7
    i32 439, label %7
    i32 438, label %7
    i32 437, label %7
    i32 436, label %7
    i32 435, label %7
    i32 434, label %7
    i32 433, label %7
    i32 432, label %7
    i32 431, label %7
    i32 430, label %7
    i32 429, label %7
    i32 428, label %7
    i32 427, label %7
    i32 426, label %7
    i32 425, label %7
    i32 424, label %7
    i32 502, label %7
    i32 501, label %7
    i32 500, label %7
    i32 499, label %7
    i32 498, label %7
    i32 497, label %7
    i32 496, label %7
    i32 495, label %7
    i32 494, label %7
    i32 493, label %7
    i32 492, label %7
    i32 414, label %7
    i32 409, label %7
    i32 408, label %7
    i32 407, label %7
    i32 406, label %7
    i32 405, label %7
    i32 404, label %7
    i32 403, label %7
    i32 402, label %7
    i32 413, label %7
    i32 412, label %7
    i32 411, label %7
    i32 410, label %7
    i32 514, label %7
    i32 187, label %7
    i32 277, label %7
    i32 186, label %7
    i32 291, label %7
    i32 201, label %7
    i32 290, label %7
    i32 200, label %7
    i32 289, label %7
    i32 199, label %7
    i32 288, label %7
    i32 198, label %7
    i32 287, label %7
    i32 197, label %7
    i32 286, label %7
    i32 196, label %7
    i32 285, label %7
    i32 195, label %7
    i32 284, label %7
    i32 194, label %7
    i32 283, label %7
    i32 193, label %7
    i32 282, label %7
    i32 192, label %7
    i32 281, label %7
    i32 191, label %7
    i32 280, label %7
    i32 190, label %7
    i32 279, label %7
    i32 189, label %7
    i32 278, label %7
    i32 188, label %7
    i32 275, label %7
    i32 184, label %7
    i32 276, label %7
    i32 185, label %7
    i32 171, label %7
    i32 324, label %7
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 1, i32* %3, align 4
  br label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %8, %7
  %10 = load i32, i32* %3, align 4
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
