; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_mspro_block_attr_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_mspro_block_attr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mspro_block_attr_show_sysinfo = common dso_local global i32 0, align 4
@mspro_block_attr_show_modelname = common dso_local global i32 0, align 4
@mspro_block_attr_show_mbr = common dso_local global i32 0, align 4
@mspro_block_attr_show_specfile = common dso_local global i32 0, align 4
@mspro_block_attr_show_devinfo = common dso_local global i32 0, align 4
@mspro_block_attr_show_default = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @mspro_block_attr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mspro_block_attr_show(i8 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  switch i32 %5, label %16 [
    i32 128, label %6
    i32 131, label %8
    i32 132, label %10
    i32 130, label %12
    i32 129, label %12
    i32 133, label %14
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @mspro_block_attr_show_sysinfo, align 4
  store i32 %7, i32* %2, align 4
  br label %18

8:                                                ; preds = %1
  %9 = load i32, i32* @mspro_block_attr_show_modelname, align 4
  store i32 %9, i32* %2, align 4
  br label %18

10:                                               ; preds = %1
  %11 = load i32, i32* @mspro_block_attr_show_mbr, align 4
  store i32 %11, i32* %2, align 4
  br label %18

12:                                               ; preds = %1, %1
  %13 = load i32, i32* @mspro_block_attr_show_specfile, align 4
  store i32 %13, i32* %2, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @mspro_block_attr_show_devinfo, align 4
  store i32 %15, i32* %2, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @mspro_block_attr_show_default, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %14, %12, %10, %8, %6
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
