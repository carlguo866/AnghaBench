; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocessor_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocessor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { i32, i32*, i32*, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cf_preprocessor_init(%struct.cf_preprocessor* %0) #0 {
  %2 = alloca %struct.cf_preprocessor*, align 8
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %2, align 8
  %3 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %2, align 8
  %4 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %3, i32 0, i32 6
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @da_init(i32 %5)
  %7 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %2, align 8
  %8 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @da_init(i32 %9)
  %11 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %2, align 8
  %12 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @da_init(i32 %13)
  %15 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %2, align 8
  %16 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @da_init(i32 %17)
  %19 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %2, align 8
  %20 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %2, align 8
  %22 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %2, align 8
  %24 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  ret void
}

declare dso_local i32 @da_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
