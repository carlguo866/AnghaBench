; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_read.c_sati_read_10_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_read.c_sati_read_10_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@SATI_SEQUENCE_READ_10 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_read_10_translate_command(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32* @sati_cb_get_cdb_address(i8* %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @sati_get_cdb_byte(i32* %12, i32 7)
  %14 = shl i32 %13, 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @sati_get_cdb_byte(i32* %15, i32 8)
  %17 = or i32 %14, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @sati_device_state_stopped(%struct.TYPE_5__* %18, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %23, i32* %4, align 4
  br label %33

24:                                               ; preds = %3
  %25 = load i32, i32* @SATI_SEQUENCE_READ_10, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @sati_read_32_bit_lba_translate_command(%struct.TYPE_5__* %28, i8* %29, i8* %30, i32 %31, i32 9)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %24, %22
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i64 @sati_device_state_stopped(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @sati_read_32_bit_lba_translate_command(%struct.TYPE_5__*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
