; ModuleID = '/home/carl/AnghaBench/libgit2/fuzzers/extr_download_refs_fuzzer.c_fuzzer_subtransport_cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/fuzzers/extr_download_refs_fuzzer.c_fuzzer_subtransport_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuzzer_buffer = type { i32 }
%struct.fuzzer_subtransport = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuzzer_subtransport_cb(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fuzzer_buffer*, align 8
  %9 = alloca %struct.fuzzer_subtransport*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.fuzzer_buffer*
  store %struct.fuzzer_buffer* %11, %struct.fuzzer_buffer** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load %struct.fuzzer_buffer*, %struct.fuzzer_buffer** %8, align 8
  %14 = call i64 @fuzzer_subtransport_new(%struct.fuzzer_subtransport** %9, i32* %12, %struct.fuzzer_buffer* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.fuzzer_subtransport*, %struct.fuzzer_subtransport** %9, align 8
  %19 = getelementptr inbounds %struct.fuzzer_subtransport, %struct.fuzzer_subtransport* %18, i32 0, i32 0
  %20 = load i32**, i32*** %5, align 8
  store i32* %19, i32** %20, align 8
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %16
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i64 @fuzzer_subtransport_new(%struct.fuzzer_subtransport**, i32*, %struct.fuzzer_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
