; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mbuf_remove.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mbuf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbuf_remove(%struct.mbuf* %0, i64 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ugt i64 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %10 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ule i64 %8, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  %14 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %19, %20
  %22 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = sub i64 %24, %25
  %27 = call i32 @memmove(i64 %16, i64 %21, i64 %26)
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %31, %28
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %13, %7, %2
  ret void
}

declare dso_local i32 @memmove(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
