; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_reassign_blocks.c_sati_reassign_blocks_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_reassign_blocks.c_sati_reassign_blocks_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }

@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i64 0, align 8
@SATI_SEQUENCE_REASSIGN_BLOCKS = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_INCOMPLETE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SATI_SEQUENCE_STATE_FINAL = common dso_local global i8* null, align 8
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_MEDIUM_ERROR = common dso_local global i32 0, align 4
@SCSI_ASC_UNRECOVERED_READ_ERROR = common dso_local global i32 0, align 4
@SCSI_ASCQ_UNRECOVERED_READ_ERROR_AUTO_REALLOCATE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sati_reassign_blocks_translate_command(%struct.TYPE_9__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  store i64 %9, i64* %7, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %8, align 8
  %13 = load i32, i32* @SATI_SEQUENCE_REASSIGN_BLOCKS, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SATI_SEQUENCE_STATE_INCOMPLETE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @sati_reassign_blocks_initial_processing(%struct.TYPE_9__* %22, i8* %23, i8* %24)
  br label %26

26:                                               ; preds = %21, %3
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load i64, i64* @FALSE, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @sati_reassign_blocks_process(%struct.TYPE_9__* %38, i8* %39, i8* %40)
  store i64 %41, i64* %7, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load i8*, i8** @SATI_SEQUENCE_STATE_FINAL, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %58

54:                                               ; preds = %37
  %55 = load i64, i64* @SATI_SEQUENCE_STATE_INCOMPLETE, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load i8*, i8** @SATI_SEQUENCE_STATE_FINAL, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %70 = load i32, i32* @SCSI_SENSE_MEDIUM_ERROR, align 4
  %71 = load i32, i32* @SCSI_ASC_UNRECOVERED_READ_ERROR, align 4
  %72 = load i32, i32* @SCSI_ASCQ_UNRECOVERED_READ_ERROR_AUTO_REALLOCATE_FAIL, align 4
  %73 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_9__* %67, i8* %68, i32 %69, i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %62, %58
  %75 = load i64, i64* %7, align 8
  ret i64 %75
}

declare dso_local i32 @sati_reassign_blocks_initial_processing(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i64 @sati_reassign_blocks_process(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_9__*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
