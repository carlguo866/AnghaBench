; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_amd64_csrow_nr_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_amd64_csrow_nr_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"  (csrow=%d) DBAM map index= %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"    nr_pages= %u  channel-count = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i64, i32)* @amd64_csrow_nr_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd64_csrow_nr_pages(%struct.amd64_pvt* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.amd64_pvt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %14 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %18 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %15, %12 ], [ %19, %16 ]
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sdiv i32 %23, 2
  %25 = mul nsw i32 %24, 4
  %26 = ashr i32 %22, %25
  %27 = and i32 %26, 15
  store i32 %27, i32* %7, align 4
  %28 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %29 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.amd64_pvt*, i64, i32)**
  %33 = load i32 (%struct.amd64_pvt*, i64, i32)*, i32 (%struct.amd64_pvt*, i64, i32)** %32, align 8
  %34 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 %33(%struct.amd64_pvt* %34, i64 %35, i32 %36)
  %38 = load i32, i32* @PAGE_SHIFT, align 4
  %39 = sub nsw i32 20, %38
  %40 = shl i32 %37, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @debugf0(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %46 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @debugf0(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @debugf0(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
