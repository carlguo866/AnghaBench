; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_regional.c_regional_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_regional.c_regional_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i8*, i64, i32*, i32*, i64, i64 }

@ALIGNMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regional*)* @regional_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regional_init(%struct.regional* %0) #0 {
  %2 = alloca %struct.regional*, align 8
  %3 = alloca i64, align 8
  store %struct.regional* %0, %struct.regional** %2, align 8
  %4 = load i32, i32* @ALIGNMENT, align 4
  %5 = call i64 @ALIGN_UP(i32 48, i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load %struct.regional*, %struct.regional** %2, align 8
  %7 = bitcast %struct.regional* %6 to i8*
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  %10 = load %struct.regional*, %struct.regional** %2, align 8
  %11 = getelementptr inbounds %struct.regional, %struct.regional* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load %struct.regional*, %struct.regional** %2, align 8
  %13 = getelementptr inbounds %struct.regional, %struct.regional* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = sub i64 %14, %15
  %17 = load %struct.regional*, %struct.regional** %2, align 8
  %18 = getelementptr inbounds %struct.regional, %struct.regional* %17, i32 0, i32 5
  store i64 %16, i64* %18, align 8
  %19 = load %struct.regional*, %struct.regional** %2, align 8
  %20 = getelementptr inbounds %struct.regional, %struct.regional* %19, i32 0, i32 3
  store i32* null, i32** %20, align 8
  %21 = load %struct.regional*, %struct.regional** %2, align 8
  %22 = getelementptr inbounds %struct.regional, %struct.regional* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.regional*, %struct.regional** %2, align 8
  %24 = getelementptr inbounds %struct.regional, %struct.regional* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  ret void
}

declare dso_local i64 @ALIGN_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
