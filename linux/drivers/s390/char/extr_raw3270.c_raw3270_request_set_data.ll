; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_request_set_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_request_set_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raw3270_request_set_data(%struct.raw3270_request* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.raw3270_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.raw3270_request* %0, %struct.raw3270_request** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @__pa(i8* %7)
  %9 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %10 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %14 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  ret void
}

declare dso_local i32 @__pa(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
