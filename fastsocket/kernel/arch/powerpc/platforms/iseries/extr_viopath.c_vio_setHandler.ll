; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_viopath.c_vio_setHandler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_viopath.c_vio_setHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIOMAJOR_SUBTYPE_SHIFT = common dso_local global i32 0, align 4
@VIO_MAX_SUBTYPES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vio_handler = common dso_local global i32** null, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vio_setHandler(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @VIOMAJOR_SUBTYPE_SHIFT, align 4
  %8 = ashr i32 %6, %7
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @VIO_MAX_SUBTYPES, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %11
  %19 = load i32**, i32*** @vio_handler, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %34

28:                                               ; preds = %18
  %29 = load i32*, i32** %5, align 8
  %30 = load i32**, i32*** @vio_handler, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  store i32* %29, i32** %33, align 8
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %28, %25, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
