; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_..utillexer.h_error_data_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_..utillexer.h_error_data_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.error_item = type { i32 }
%struct.error_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.error_item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.error_item* (%struct.error_data*, i64)* @error_data_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.error_item* @error_data_item(%struct.error_data* %0, i64 %1) #0 {
  %3 = alloca %struct.error_data*, align 8
  %4 = alloca i64, align 8
  store %struct.error_data* %0, %struct.error_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.error_data*, %struct.error_data** %3, align 8
  %6 = getelementptr inbounds %struct.error_data, %struct.error_data* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.error_item*, %struct.error_item** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.error_item, %struct.error_item* %8, i64 %9
  ret %struct.error_item* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
