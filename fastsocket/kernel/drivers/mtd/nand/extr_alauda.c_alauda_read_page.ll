; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_read_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i8*, i32*, i32*, i32*)* @alauda_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_read_page(%struct.mtd_info* %0, i32 %1, i8* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i32 @__alauda_read_page(%struct.mtd_info* %15, i32 %16, i8* %17, i32* %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %7, align 4
  br label %38

24:                                               ; preds = %6
  %25 = load i8*, i8** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 13
  %28 = load i32*, i32** %12, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = call i32 @correct_data(i8* %25, i32* %27, i32* %28, i32* %29)
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr i8, i8* %31, i64 256
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 8
  %35 = load i32*, i32** %12, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @correct_data(i8* %32, i32* %34, i32* %35, i32* %36)
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %24, %22
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @__alauda_read_page(%struct.mtd_info*, i32, i8*, i32*) #1

declare dso_local i32 @correct_data(i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
