; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__next.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i32 }
%struct.bpf_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_program* @bpf_program__next(%struct.bpf_program* %0, %struct.bpf_object* %1) #0 {
  %3 = alloca %struct.bpf_program*, align 8
  %4 = alloca %struct.bpf_object*, align 8
  %5 = alloca %struct.bpf_program*, align 8
  store %struct.bpf_program* %0, %struct.bpf_program** %3, align 8
  store %struct.bpf_object* %1, %struct.bpf_object** %4, align 8
  %6 = load %struct.bpf_program*, %struct.bpf_program** %3, align 8
  store %struct.bpf_program* %6, %struct.bpf_program** %5, align 8
  br label %7

7:                                                ; preds = %19, %2
  %8 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %9 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %10 = call %struct.bpf_program* @__bpf_program__iter(%struct.bpf_program* %8, %struct.bpf_object* %9, i32 1)
  store %struct.bpf_program* %10, %struct.bpf_program** %5, align 8
  br label %11

11:                                               ; preds = %7
  %12 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %13 = icmp ne %struct.bpf_program* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %16 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %17 = call i64 @bpf_program__is_function_storage(%struct.bpf_program* %15, %struct.bpf_object* %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi i1 [ false, %11 ], [ %18, %14 ]
  br i1 %20, label %7, label %21

21:                                               ; preds = %19
  %22 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  ret %struct.bpf_program* %22
}

declare dso_local %struct.bpf_program* @__bpf_program__iter(%struct.bpf_program*, %struct.bpf_object*, i32) #1

declare dso_local i64 @bpf_program__is_function_storage(%struct.bpf_program*, %struct.bpf_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
