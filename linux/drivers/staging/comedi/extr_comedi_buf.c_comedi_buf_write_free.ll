; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c_comedi_buf_write_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c_comedi_buf_write_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_buf_write_free(%struct.comedi_subdevice* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_subdevice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 0
  %9 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  store %struct.comedi_async* %9, %struct.comedi_async** %5, align 8
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %11 = call i32 @comedi_buf_write_n_allocated(%struct.comedi_subdevice* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %21 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, %19
  store i64 %23, i64* %21, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %26 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %30 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %31 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %34 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = call i32 @comedi_buf_munge(%struct.comedi_subdevice* %29, i64 %36)
  %38 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %39 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %42 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp uge i32 %40, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %17
  %46 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %47 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %50 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = urem i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %45, %17
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @comedi_buf_write_n_allocated(%struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_buf_munge(%struct.comedi_subdevice*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
