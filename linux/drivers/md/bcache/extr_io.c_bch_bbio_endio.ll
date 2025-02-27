; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_io.c_bch_bbio_endio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_io.c_bch_bbio_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32 }
%struct.bio = type { %struct.closure* }
%struct.closure = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_bbio_endio(%struct.cache_set* %0, %struct.bio* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.cache_set*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.closure*, align 8
  store %struct.cache_set* %0, %struct.cache_set** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.bio*, %struct.bio** %6, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load %struct.closure*, %struct.closure** %11, align 8
  store %struct.closure* %12, %struct.closure** %9, align 8
  %13 = load %struct.cache_set*, %struct.cache_set** %5, align 8
  %14 = load %struct.bio*, %struct.bio** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @bch_bbio_count_io_errors(%struct.cache_set* %13, %struct.bio* %14, i32 %15, i8* %16)
  %18 = load %struct.bio*, %struct.bio** %6, align 8
  %19 = call i32 @bio_put(%struct.bio* %18)
  %20 = load %struct.closure*, %struct.closure** %9, align 8
  %21 = call i32 @closure_put(%struct.closure* %20)
  ret void
}

declare dso_local i32 @bch_bbio_count_io_errors(%struct.cache_set*, %struct.bio*, i32, i8*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @closure_put(%struct.closure*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
