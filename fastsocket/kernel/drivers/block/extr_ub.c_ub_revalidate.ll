; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_revalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_dev = type { i32 }
%struct.ub_lun = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ub_dev*, %struct.ub_lun*)* @ub_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ub_revalidate(%struct.ub_dev* %0, %struct.ub_lun* %1) #0 {
  %3 = alloca %struct.ub_dev*, align 8
  %4 = alloca %struct.ub_lun*, align 8
  store %struct.ub_dev* %0, %struct.ub_dev** %3, align 8
  store %struct.ub_lun* %1, %struct.ub_lun** %4, align 8
  %5 = load %struct.ub_lun*, %struct.ub_lun** %4, align 8
  %6 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.ub_lun*, %struct.ub_lun** %4, align 8
  %8 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.ub_lun*, %struct.ub_lun** %4, align 8
  %11 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 512, i32* %12, align 8
  %13 = load %struct.ub_lun*, %struct.ub_lun** %4, align 8
  %14 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.ub_dev*, %struct.ub_dev** %3, align 8
  %17 = load %struct.ub_lun*, %struct.ub_lun** %4, align 8
  %18 = call i64 @ub_sync_tur(%struct.ub_dev* %16, %struct.ub_lun* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %48

21:                                               ; preds = %2
  %22 = load %struct.ub_lun*, %struct.ub_lun** %4, align 8
  %23 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.ub_dev*, %struct.ub_dev** %3, align 8
  %25 = load %struct.ub_lun*, %struct.ub_lun** %4, align 8
  %26 = load %struct.ub_lun*, %struct.ub_lun** %4, align 8
  %27 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %26, i32 0, i32 0
  %28 = call i64 @ub_sync_read_cap(%struct.ub_dev* %24, %struct.ub_lun* %25, %struct.TYPE_2__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %21
  %31 = load %struct.ub_dev*, %struct.ub_dev** %3, align 8
  %32 = load %struct.ub_lun*, %struct.ub_lun** %4, align 8
  %33 = load %struct.ub_lun*, %struct.ub_lun** %4, align 8
  %34 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %33, i32 0, i32 0
  %35 = call i64 @ub_sync_read_cap(%struct.ub_dev* %31, %struct.ub_lun* %32, %struct.TYPE_2__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load %struct.ub_lun*, %struct.ub_lun** %4, align 8
  %39 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.ub_lun*, %struct.ub_lun** %4, align 8
  %42 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 512, i32* %43, align 8
  %44 = load %struct.ub_lun*, %struct.ub_lun** %4, align 8
  %45 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %37, %30
  br label %48

48:                                               ; preds = %20, %47, %21
  ret void
}

declare dso_local i64 @ub_sync_tur(%struct.ub_dev*, %struct.ub_lun*) #1

declare dso_local i64 @ub_sync_read_cap(%struct.ub_dev*, %struct.ub_lun*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
