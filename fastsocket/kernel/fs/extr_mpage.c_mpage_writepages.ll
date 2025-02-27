; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_mpage.c_mpage_writepages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_mpage.c_mpage_writepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.writeback_control = type { i32 }
%struct.mpage_data = type { i32, i32*, i32, i32 }

@__mpage_writepage = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpage_writepages(%struct.address_space* %0, %struct.writeback_control* %1, i32 %2) #0 {
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpage_data, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load %struct.address_space*, %struct.address_space** %4, align 8
  %13 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %14 = call i32 @generic_writepages(%struct.address_space* %12, %struct.writeback_control* %13)
  store i32 %14, i32* %7, align 4
  br label %34

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %8, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %8, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %8, i32 0, i32 2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %8, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = load %struct.address_space*, %struct.address_space** %4, align 8
  %22 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %23 = load i32, i32* @__mpage_writepage, align 4
  %24 = call i32 @write_cache_pages(%struct.address_space* %21, %struct.writeback_control* %22, i32 %23, %struct.mpage_data* %8)
  store i32 %24, i32* %7, align 4
  %25 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %8, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %15
  %29 = load i32, i32* @WRITE, align 4
  %30 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %8, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @mpage_bio_submit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %15
  br label %34

34:                                               ; preds = %33, %11
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @generic_writepages(%struct.address_space*, %struct.writeback_control*) #1

declare dso_local i32 @write_cache_pages(%struct.address_space*, %struct.writeback_control*, i32, %struct.mpage_data*) #1

declare dso_local i32 @mpage_bio_submit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
