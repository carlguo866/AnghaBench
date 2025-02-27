; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store.c_bhnd_nvram_store_parse_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store.c_bhnd_nvram_store_parse_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_store = type { i32 }
%struct.bhnd_nvram_io = type { i32 }
%struct.bhnd_nvram_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvram_store_parse_new(%struct.bhnd_nvram_store** %0, %struct.bhnd_nvram_io* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_nvram_store**, align 8
  %6 = alloca %struct.bhnd_nvram_io*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bhnd_nvram_data*, align 8
  %9 = alloca i32, align 4
  store %struct.bhnd_nvram_store** %0, %struct.bhnd_nvram_store*** %5, align 8
  store %struct.bhnd_nvram_io* %1, %struct.bhnd_nvram_io** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %6, align 8
  %12 = call i32 @bhnd_nvram_data_new(i32* %10, %struct.bhnd_nvram_data** %8, %struct.bhnd_nvram_io* %11)
  store i32 %12, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %4, align 4
  br label %23

16:                                               ; preds = %3
  %17 = load %struct.bhnd_nvram_store**, %struct.bhnd_nvram_store*** %5, align 8
  %18 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %8, align 8
  %19 = call i32 @bhnd_nvram_store_new(%struct.bhnd_nvram_store** %17, %struct.bhnd_nvram_data* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %8, align 8
  %21 = call i32 @bhnd_nvram_data_release(%struct.bhnd_nvram_data* %20)
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %16, %14
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @bhnd_nvram_data_new(i32*, %struct.bhnd_nvram_data**, %struct.bhnd_nvram_io*) #1

declare dso_local i32 @bhnd_nvram_store_new(%struct.bhnd_nvram_store**, %struct.bhnd_nvram_data*) #1

declare dso_local i32 @bhnd_nvram_data_release(%struct.bhnd_nvram_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
