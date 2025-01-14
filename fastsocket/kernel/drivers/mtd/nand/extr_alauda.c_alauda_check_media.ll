; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_check_media.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_check_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alauda = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alauda*)* @alauda_check_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_check_media(%struct.alauda* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alauda*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.alauda* %0, %struct.alauda** %3, align 8
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32* %8, i32** %5, align 8
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32* %10, i32** %6, align 8
  %11 = load %struct.alauda*, %struct.alauda** %3, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %13 = call i32 @alauda_get_media_status(%struct.alauda* %11, i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %48

18:                                               ; preds = %1
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %48

26:                                               ; preds = %18
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 128
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 31
  %35 = icmp eq i32 %34, 16
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %26
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %48

39:                                               ; preds = %31
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.alauda*, %struct.alauda** %3, align 8
  %46 = call i32 @alauda_init_media(%struct.alauda* %45)
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %44, %36, %23, %16
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @alauda_get_media_status(%struct.alauda*, i32*) #1

declare dso_local i32 @alauda_init_media(%struct.alauda*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
