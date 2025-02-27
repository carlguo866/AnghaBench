; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_machine_kexec_file.c_arch_kexec_kernel_image_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_machine_kexec_file.c_arch_kexec_kernel_image_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32 }

@HEAD_END = common dso_local global i64 0, align 8
@ENOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_kexec_kernel_image_probe(%struct.kimage* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kimage*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.kimage* %0, %struct.kimage** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HEAD_END, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @ENOEXEC, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %19

14:                                               ; preds = %3
  %15 = load %struct.kimage*, %struct.kimage** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @kexec_image_probe_default(%struct.kimage* %15, i8* %16, i64 %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %14, %11
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @kexec_image_probe_default(%struct.kimage*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
