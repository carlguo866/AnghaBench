; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8903.c_wm8903_readable_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8903.c_wm8903_readable_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @wm8903_readable_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8903_readable_register(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %8 [
    i32 134, label %7
    i32 135, label %7
    i32 175, label %7
    i32 133, label %7
    i32 143, label %7
    i32 200, label %7
    i32 201, label %7
    i32 142, label %7
    i32 141, label %7
    i32 140, label %7
    i32 139, label %7
    i32 138, label %7
    i32 137, label %7
    i32 136, label %7
    i32 172, label %7
    i32 171, label %7
    i32 170, label %7
    i32 179, label %7
    i32 178, label %7
    i32 177, label %7
    i32 176, label %7
    i32 165, label %7
    i32 164, label %7
    i32 167, label %7
    i32 166, label %7
    i32 203, label %7
    i32 202, label %7
    i32 204, label %7
    i32 157, label %7
    i32 156, label %7
    i32 155, label %7
    i32 154, label %7
    i32 153, label %7
    i32 198, label %7
    i32 187, label %7
    i32 197, label %7
    i32 186, label %7
    i32 196, label %7
    i32 185, label %7
    i32 184, label %7
    i32 183, label %7
    i32 182, label %7
    i32 181, label %7
    i32 194, label %7
    i32 193, label %7
    i32 192, label %7
    i32 191, label %7
    i32 190, label %7
    i32 189, label %7
    i32 180, label %7
    i32 163, label %7
    i32 162, label %7
    i32 161, label %7
    i32 160, label %7
    i32 159, label %7
    i32 158, label %7
    i32 199, label %7
    i32 195, label %7
    i32 174, label %7
    i32 173, label %7
    i32 132, label %7
    i32 131, label %7
    i32 130, label %7
    i32 129, label %7
    i32 128, label %7
    i32 168, label %7
    i32 152, label %7
    i32 151, label %7
    i32 150, label %7
    i32 149, label %7
    i32 148, label %7
    i32 145, label %7
    i32 144, label %7
    i32 146, label %7
    i32 147, label %7
    i32 169, label %7
    i32 188, label %7
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
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
