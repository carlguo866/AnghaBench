; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_get_icount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_get_icount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.slgt_info* }
%struct.slgt_info = type { i32, %struct.mgsl_icount }
%struct.mgsl_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)* @get_icount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_icount(%struct.tty_struct* %0, %struct.serial_icounter_struct* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_icounter_struct*, align 8
  %5 = alloca %struct.slgt_info*, align 8
  %6 = alloca %struct.mgsl_icount, align 4
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_icounter_struct* %1, %struct.serial_icounter_struct** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.slgt_info*, %struct.slgt_info** %9, align 8
  store %struct.slgt_info* %10, %struct.slgt_info** %5, align 8
  %11 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %12 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %16 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %15, i32 0, i32 1
  %17 = bitcast %struct.mgsl_icount* %6 to i8*
  %18 = bitcast %struct.mgsl_icount* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 44, i1 false)
  %19 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %20 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %19, i32 0, i32 0
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 10
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %26 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %25, i32 0, i32 10
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %30 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %34 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %38 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %42 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %46 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %50 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %54 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %58 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %62 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %66 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
