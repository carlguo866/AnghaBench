; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_0copy_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_0copy_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.page = type { i32 }
%struct.siw_sge = type { i32, i64 }

@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.page**, %struct.siw_sge*, i32, i32)* @siw_0copy_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_0copy_tx(%struct.socket* %0, %struct.page** %1, %struct.siw_sge* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca %struct.siw_sge*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.page** %1, %struct.page*** %7, align 8
  store %struct.siw_sge* %2, %struct.siw_sge** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.siw_sge*, %struct.siw_sge** %8, align 8
  %16 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = zext i32 %18 to i64
  %20 = sub nsw i64 %17, %19
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @min(i64 %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load %struct.siw_sge*, %struct.siw_sge** %8, align 8
  %24 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = add i32 %25, %26
  %28 = load i32, i32* @PAGE_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %84, %5
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %85

35:                                               ; preds = %31
  %36 = load %struct.socket*, %struct.socket** %6, align 8
  %37 = load %struct.page**, %struct.page*** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.page*, %struct.page** %37, i64 %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @siw_tcp_sendpages(%struct.socket* %36, %struct.page** %40, i32 %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %82

46:                                               ; preds = %35
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %46
  br label %85

58:                                               ; preds = %53
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %59, %60
  %62 = call i32 @PAGE_ALIGN(i32 %61)
  %63 = load i32, i32* @PAGE_SHIFT, align 4
  %64 = ashr i32 %62, %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load %struct.siw_sge*, %struct.siw_sge** %8, align 8
  %68 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %67, i32 1
  store %struct.siw_sge* %68, %struct.siw_sge** %8, align 8
  %69 = load %struct.siw_sge*, %struct.siw_sge** %8, align 8
  %70 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %12, align 4
  %74 = sub i32 %72, %73
  %75 = call i32 @min(i64 %71, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load %struct.siw_sge*, %struct.siw_sge** %8, align 8
  %77 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @PAGE_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  store i32 %81, i32* %9, align 4
  br label %84

82:                                               ; preds = %35
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %12, align 4
  br label %85

84:                                               ; preds = %58
  br label %31

85:                                               ; preds = %82, %57, %31
  %86 = load i32, i32* %12, align 4
  ret i32 %86
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @siw_tcp_sendpages(%struct.socket*, %struct.page**, i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
