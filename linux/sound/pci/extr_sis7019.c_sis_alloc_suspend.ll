; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c_sis_alloc_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c_sis_alloc_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis7019 = type { i32* }

@SIS_SUSPEND_PAGES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sis7019*)* @sis_alloc_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_alloc_suspend(%struct.sis7019* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sis7019*, align 8
  %4 = alloca i32, align 4
  store %struct.sis7019* %0, %struct.sis7019** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @SIS_SUSPEND_PAGES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32 @kmalloc(i32 4096, i32 %10)
  %12 = load %struct.sis7019*, %struct.sis7019** %3, align 8
  %13 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32 %11, i32* %17, align 4
  %18 = load %struct.sis7019*, %struct.sis7019** %3, align 8
  %19 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %9
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %40

29:                                               ; preds = %9
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %5

33:                                               ; preds = %5
  %34 = load %struct.sis7019*, %struct.sis7019** %3, align 8
  %35 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memset(i32 %38, i32 0, i32 4096)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %33, %26
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
