; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__init_kversion.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__init_kversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"invalid kver section in %s\0A\00", align 1
@LIBBPF_ERRNO__FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"kernel version of %s is %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*, i8*, i64)* @bpf_object__init_kversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_object__init_kversion(%struct.bpf_object* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ne i64 %9, 4
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %13 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pr_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @LIBBPF_ERRNO__FORMAT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %31

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @memcpy(i32* %8, i8* %19, i32 4)
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %23 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %25 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %28 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %18, %11
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
