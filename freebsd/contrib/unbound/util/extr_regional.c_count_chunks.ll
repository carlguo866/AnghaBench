; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_regional.c_count_chunks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_regional.c_count_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.regional*)* @count_chunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @count_chunks(%struct.regional* %0) #0 {
  %2 = alloca %struct.regional*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %struct.regional* %0, %struct.regional** %2, align 8
  store i64 1, i64* %3, align 8
  %5 = load %struct.regional*, %struct.regional** %2, align 8
  %6 = getelementptr inbounds %struct.regional, %struct.regional* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %4, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i64, i64* %3, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to i8**
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %4, align 8
  br label %8

17:                                               ; preds = %8
  %18 = load i64, i64* %3, align 8
  ret i64 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
