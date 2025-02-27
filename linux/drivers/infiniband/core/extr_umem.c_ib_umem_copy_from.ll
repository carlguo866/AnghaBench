; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_umem.c_ib_umem_copy_from.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_umem.c_ib_umem_copy_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_umem = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [71 x i8] c"ib_umem_copy_from not in range. offset: %zd umem length: %zd end: %zd\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_umem_copy_from(i8* %0, %struct.ib_umem* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ib_umem*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.ib_umem* %1, %struct.ib_umem** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %9, align 8
  %14 = add i64 %12, %13
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.ib_umem*, %struct.ib_umem** %7, align 8
  %17 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ugt i64 %15, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.ib_umem*, %struct.ib_umem** %7, align 8
  %23 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = sub i64 %24, %25
  %27 = icmp ugt i64 %21, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %20, %4
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.ib_umem*, %struct.ib_umem** %7, align 8
  %31 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %32, i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %65

37:                                               ; preds = %20
  %38 = load %struct.ib_umem*, %struct.ib_umem** %7, align 8
  %39 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ib_umem*, %struct.ib_umem** %7, align 8
  %43 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.ib_umem*, %struct.ib_umem** %7, align 8
  %49 = call i64 @ib_umem_offset(%struct.ib_umem* %48)
  %50 = add i64 %47, %49
  %51 = call i32 @sg_pcopy_to_buffer(i32 %41, i32 %44, i8* %45, i64 %46, i64 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %37
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  br label %65

56:                                               ; preds = %37
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %65

64:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %61, %54, %28
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @pr_err(i8*, i64, i64, i64) #1

declare dso_local i32 @sg_pcopy_to_buffer(i32, i32, i8*, i64, i64) #1

declare dso_local i64 @ib_umem_offset(%struct.ib_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
