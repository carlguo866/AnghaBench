; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_anybuss_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_anybuss_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_client = type { %struct.anybuss_host* }
%struct.anybuss_host = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @anybuss_send_msg(%struct.anybuss_client* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.anybuss_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.anybuss_host*, align 8
  store %struct.anybuss_client* %0, %struct.anybuss_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.anybuss_client*, %struct.anybuss_client** %5, align 8
  %11 = getelementptr inbounds %struct.anybuss_client, %struct.anybuss_client* %10, i32 0, i32 0
  %12 = load %struct.anybuss_host*, %struct.anybuss_host** %11, align 8
  store %struct.anybuss_host* %12, %struct.anybuss_host** %9, align 8
  %13 = load %struct.anybuss_host*, %struct.anybuss_host** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @_anybus_mbox_cmd(%struct.anybuss_host* %13, i32 %14, i32 1, i8* %15, i64 %16, i32* null, i32 0, i32* null, i32 0)
  ret i32 %17
}

declare dso_local i32 @_anybus_mbox_cmd(%struct.anybuss_host*, i32, i32, i8*, i64, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
