; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_ctrl_std_sym_to_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_ctrl_std_sym_to_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_ctrl*, i8*, i32, i32*, i32*)* @ctrl_std_sym_to_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_std_sym_to_val(%struct.pvr2_ctrl* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pvr2_ctrl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @pvr2_std_str_to_id(i32* %13, i8* %14, i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %6, align 4
  br label %34

21:                                               ; preds = %5
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %13, align 4
  %26 = load i32*, i32** %10, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %13, align 4
  %32 = load i32*, i32** %11, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %27
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @pvr2_std_str_to_id(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
