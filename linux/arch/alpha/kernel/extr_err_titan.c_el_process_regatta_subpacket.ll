; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_titan.c_el_process_regatta_subpacket.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_titan.c_el_process_regatta_subpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.el_subpacket = type { i64, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.el_common = type { i32 }

@EL_CLASS__REGATTA_FAMILY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"%s  ** Unexpected header CLASS %d TYPE %d, aborting\0A\00", align 1
@err_print_prefix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s  ** Occurred on CPU %d:\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s  ** REGATTA TYPE %d SUBPACKET\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.el_subpacket* (%struct.el_subpacket*)* @el_process_regatta_subpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.el_subpacket* @el_process_regatta_subpacket(%struct.el_subpacket* %0) #0 {
  %2 = alloca %struct.el_subpacket*, align 8
  %3 = alloca %struct.el_subpacket*, align 8
  store %struct.el_subpacket* %0, %struct.el_subpacket** %3, align 8
  %4 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %5 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @EL_CLASS__REGATTA_FAMILY, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @err_print_prefix, align 4
  %11 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %12 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %16 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14, i32 %17)
  store %struct.el_subpacket* null, %struct.el_subpacket** %2, align 8
  br label %55

19:                                               ; preds = %1
  %20 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %21 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %39 [
    i32 130, label %23
    i32 128, label %23
    i32 132, label %23
    i32 131, label %23
    i32 129, label %23
  ]

23:                                               ; preds = %19, %19, %19, %19, %19
  %24 = load i32, i32* @err_print_prefix, align 4
  %25 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %26 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %30)
  %32 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %33 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.el_common*
  %38 = call i32 @privateer_process_logout_frame(%struct.el_common* %37, i32 1)
  br label %47

39:                                               ; preds = %19
  %40 = load i32, i32* @err_print_prefix, align 4
  %41 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %42 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %46 = call i32 @el_annotate_subpacket(%struct.el_subpacket* %45)
  br label %47

47:                                               ; preds = %39, %23
  %48 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %49 = ptrtoint %struct.el_subpacket* %48 to i64
  %50 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %51 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %49, %52
  %54 = inttoptr i64 %53 to %struct.el_subpacket*
  store %struct.el_subpacket* %54, %struct.el_subpacket** %2, align 8
  br label %55

55:                                               ; preds = %47, %9
  %56 = load %struct.el_subpacket*, %struct.el_subpacket** %2, align 8
  ret %struct.el_subpacket* %56
}

declare dso_local i32 @printk(i8*, i32, i32, ...) #1

declare dso_local i32 @privateer_process_logout_frame(%struct.el_common*, i32) #1

declare dso_local i32 @el_annotate_subpacket(%struct.el_subpacket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
