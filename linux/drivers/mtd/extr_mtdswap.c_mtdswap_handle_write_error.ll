; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_handle_write_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_handle_write_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdswap_dev = type { i64, %struct.swap_eb* }
%struct.swap_eb = type { i32 }

@EBLOCK_FAILED = common dso_local global i32 0, align 4
@MTDSWAP_FAILING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdswap_dev*, %struct.swap_eb*)* @mtdswap_handle_write_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdswap_handle_write_error(%struct.mtdswap_dev* %0, %struct.swap_eb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtdswap_dev*, align 8
  %5 = alloca %struct.swap_eb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.swap_eb*, align 8
  store %struct.mtdswap_dev* %0, %struct.mtdswap_dev** %4, align 8
  store %struct.swap_eb* %1, %struct.swap_eb** %5, align 8
  %8 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %9 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EBLOCK_FAILED, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %13, i32 0, i32 1
  %15 = load %struct.swap_eb*, %struct.swap_eb** %14, align 8
  store %struct.swap_eb* %15, %struct.swap_eb** %7, align 8
  %16 = load i32, i32* @EBLOCK_FAILED, align 4
  %17 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %18 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.swap_eb*, %struct.swap_eb** %7, align 8
  %22 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %23 = icmp eq %struct.swap_eb* %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %2
  %25 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %26 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %25, i32 0, i32 1
  store %struct.swap_eb* null, %struct.swap_eb** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %31 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %36 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %37 = load i32, i32* @MTDSWAP_FAILING, align 4
  %38 = call i32 @mtdswap_rb_add(%struct.mtdswap_dev* %35, %struct.swap_eb* %36, i32 %37)
  store i32 0, i32* %3, align 4
  br label %44

39:                                               ; preds = %29, %24
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %42 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %43 = call i32 @mtdswap_handle_badblock(%struct.mtdswap_dev* %41, %struct.swap_eb* %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @mtdswap_rb_add(%struct.mtdswap_dev*, %struct.swap_eb*, i32) #1

declare dso_local i32 @mtdswap_handle_badblock(%struct.mtdswap_dev*, %struct.swap_eb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
