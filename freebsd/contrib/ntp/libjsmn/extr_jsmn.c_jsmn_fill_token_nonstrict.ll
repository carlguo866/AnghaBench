; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn.c_jsmn_fill_token_nonstrict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn.c_jsmn_fill_token_nonstrict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32)* @jsmn_fill_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsmn_fill_token(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
