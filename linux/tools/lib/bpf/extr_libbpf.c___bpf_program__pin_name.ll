; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c___bpf_program__pin_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c___bpf_program__pin_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bpf_program*)* @__bpf_program__pin_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__bpf_program__pin_name(%struct.bpf_program* %0) #0 {
  %2 = alloca %struct.bpf_program*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.bpf_program* %0, %struct.bpf_program** %2, align 8
  %5 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %6 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @strdup(i32 %7)
  store i8* %8, i8** %4, align 8
  store i8* %8, i8** %3, align 8
  br label %9

9:                                                ; preds = %13, %1
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @strchr(i8* %10, i8 signext 47)
  store i8* %11, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  store i8 95, i8* %14, align 1
  br label %9

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  ret i8* %16
}

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
