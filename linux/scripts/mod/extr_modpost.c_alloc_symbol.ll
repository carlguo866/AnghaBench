; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_alloc_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_alloc_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i32, %struct.symbol*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol* (i8*, i32, %struct.symbol*)* @alloc_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol* @alloc_symbol(i8* %0, i32 %1, %struct.symbol* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.symbol*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.symbol* %2, %struct.symbol** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = add i64 24, %9
  %11 = add i64 %10, 1
  %12 = call i32 @malloc(i64 %11)
  %13 = call %struct.symbol* @NOFAIL(i32 %12)
  store %struct.symbol* %13, %struct.symbol** %7, align 8
  %14 = load %struct.symbol*, %struct.symbol** %7, align 8
  %15 = call i32 @memset(%struct.symbol* %14, i32 0, i32 24)
  %16 = load %struct.symbol*, %struct.symbol** %7, align 8
  %17 = getelementptr inbounds %struct.symbol, %struct.symbol* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strcpy(i32 %18, i8* %19)
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.symbol*, %struct.symbol** %7, align 8
  %23 = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.symbol*, %struct.symbol** %6, align 8
  %25 = load %struct.symbol*, %struct.symbol** %7, align 8
  %26 = getelementptr inbounds %struct.symbol, %struct.symbol* %25, i32 0, i32 2
  store %struct.symbol* %24, %struct.symbol** %26, align 8
  %27 = load %struct.symbol*, %struct.symbol** %7, align 8
  %28 = getelementptr inbounds %struct.symbol, %struct.symbol* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.symbol*, %struct.symbol** %7, align 8
  ret %struct.symbol* %29
}

declare dso_local %struct.symbol* @NOFAIL(i32) #1

declare dso_local i32 @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memset(%struct.symbol*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
