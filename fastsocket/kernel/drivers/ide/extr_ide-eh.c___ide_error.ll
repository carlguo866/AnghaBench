; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-eh.c___ide_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-eh.c___ide_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.request = type { i32 }

@ide_disk = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.request*, i32, i32)* @__ide_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ide_error(%struct.TYPE_5__* %0, %struct.request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ide_disk, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = load %struct.request*, %struct.request** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @ide_ata_error(%struct.TYPE_5__* %16, %struct.request* %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %27

21:                                               ; preds = %4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = load %struct.request*, %struct.request** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ide_atapi_error(%struct.TYPE_5__* %22, %struct.request* %23, i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %21, %15
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @ide_ata_error(%struct.TYPE_5__*, %struct.request*, i32, i32) #1

declare dso_local i32 @ide_atapi_error(%struct.TYPE_5__*, %struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
