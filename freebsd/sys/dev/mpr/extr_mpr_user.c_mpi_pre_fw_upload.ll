; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpi_pre_fw_upload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpi_pre_fw_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_command = type { i32, i64 }
%struct.mpr_usr_command = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MPR_CM_FLAGS_DATAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpr_command*, %struct.mpr_usr_command*)* @mpi_pre_fw_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_pre_fw_upload(%struct.mpr_command* %0, %struct.mpr_usr_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpr_command*, align 8
  %5 = alloca %struct.mpr_usr_command*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  store %struct.mpr_command* %0, %struct.mpr_command** %4, align 8
  store %struct.mpr_usr_command* %1, %struct.mpr_usr_command** %5, align 8
  %8 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %9 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %6, align 8
  %13 = load %struct.mpr_usr_command*, %struct.mpr_usr_command** %5, align 8
  %14 = getelementptr inbounds %struct.mpr_usr_command, %struct.mpr_usr_command* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 24
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %56

20:                                               ; preds = %2
  %21 = load %struct.mpr_usr_command*, %struct.mpr_usr_command** %5, align 8
  %22 = getelementptr inbounds %struct.mpr_usr_command, %struct.mpr_usr_command* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 4
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %56

28:                                               ; preds = %20
  %29 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = call i32 @mpr_init_sge(%struct.mpr_command* %29, %struct.TYPE_3__* %30, i32* %32)
  %34 = load %struct.mpr_usr_command*, %struct.mpr_usr_command** %5, align 8
  %35 = getelementptr inbounds %struct.mpr_usr_command, %struct.mpr_usr_command* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %56

39:                                               ; preds = %28
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.mpr_usr_command*, %struct.mpr_usr_command** %5, align 8
  %43 = getelementptr inbounds %struct.mpr_usr_command, %struct.mpr_usr_command* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* @MPR_CM_FLAGS_DATAIN, align 4
  %48 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %49 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = call i32 @mpr_push_ieee_sge(%struct.mpr_command* %52, i32* %54, i32 0)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %39, %38, %26, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @mpr_init_sge(%struct.mpr_command*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @mpr_push_ieee_sge(%struct.mpr_command*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
