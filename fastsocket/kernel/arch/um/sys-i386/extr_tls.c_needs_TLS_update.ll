; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-i386/extr_tls.c_needs_TLS_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-i386/extr_tls.c_needs_TLS_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.uml_tls_struct* }
%struct.uml_tls_struct = type { i64 }

@GDT_ENTRY_TLS_MIN = common dso_local global i32 0, align 4
@GDT_ENTRY_TLS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @needs_TLS_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @needs_TLS_update(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.uml_tls_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @GDT_ENTRY_TLS_MIN, align 4
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @GDT_ENTRY_TLS_MAX, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.uml_tls_struct*, %struct.uml_tls_struct** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @GDT_ENTRY_TLS_MIN, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.uml_tls_struct, %struct.uml_tls_struct* %16, i64 %20
  store %struct.uml_tls_struct* %21, %struct.uml_tls_struct** %5, align 8
  %22 = load %struct.uml_tls_struct*, %struct.uml_tls_struct** %5, align 8
  %23 = getelementptr inbounds %struct.uml_tls_struct, %struct.uml_tls_struct* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %11
  br label %28

27:                                               ; preds = %11
  store i32 1, i32* %4, align 4
  br label %31

28:                                               ; preds = %26
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %7

31:                                               ; preds = %27, %7
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
