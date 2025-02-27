; ModuleID = '/home/carl/AnghaBench/libgit2/fuzzers/extr_config_file_fuzzer.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/libgit2/fuzzers/extr_config_file_fuzzer.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@foreach_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 @git_config_new(i32** %5)
  store i32 %8, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %28

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @git_config_backend_from_string(i32** %6, i8* %13, i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %28

18:                                               ; preds = %11
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @git_config_add_backend(i32* %19, i32* %20, i32 0, i32* null, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %28

24:                                               ; preds = %18
  store i32* null, i32** %6, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @foreach_cb, align 4
  %27 = call i32 @git_config_foreach(i32* %25, i32 %26, i32* null)
  br label %28

28:                                               ; preds = %24, %23, %17, %10
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @git_config_backend_free(i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @git_config_free(i32* %31)
  ret i32 0
}

declare dso_local i32 @git_config_new(i32**) #1

declare dso_local i32 @git_config_backend_from_string(i32**, i8*, i64) #1

declare dso_local i32 @git_config_add_backend(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @git_config_foreach(i32*, i32, i32*) #1

declare dso_local i32 @git_config_backend_free(i32*) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
