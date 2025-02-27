; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-cards.c_hauppauge_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-cards.c_hauppauge_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }
%struct.tveeprom = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"%s: warning: unknown hauppauge model #%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: hauppauge eeprom: model=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx23885_dev*, i32*)* @hauppauge_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hauppauge_eeprom(%struct.cx23885_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.cx23885_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tveeprom, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @tveeprom_hauppauge_analog(%struct.tveeprom* %5, i32* %6)
  %8 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %20 [
    i32 22001, label %10
    i32 22009, label %10
    i32 22011, label %10
    i32 22019, label %10
    i32 22021, label %10
    i32 22029, label %10
    i32 22101, label %10
    i32 22109, label %10
    i32 22111, label %10
    i32 22119, label %10
    i32 22121, label %10
    i32 22129, label %10
    i32 71009, label %10
    i32 71100, label %10
    i32 71359, label %10
    i32 71439, label %10
    i32 71449, label %10
    i32 71939, label %10
    i32 71949, label %10
    i32 71959, label %10
    i32 71979, label %10
    i32 71999, label %10
    i32 76601, label %10
    i32 77001, label %10
    i32 77011, label %10
    i32 77041, label %10
    i32 77051, label %10
    i32 78011, label %10
    i32 78501, label %10
    i32 78521, label %10
    i32 78531, label %10
    i32 78631, label %10
    i32 79001, label %10
    i32 79101, label %10
    i32 79501, label %10
    i32 79561, label %10
    i32 79571, label %10
    i32 79671, label %10
    i32 80019, label %10
    i32 81509, label %10
    i32 81519, label %10
    i32 85021, label %11
    i32 85721, label %12
    i32 121019, label %12
    i32 121029, label %13
    i32 150329, label %14
    i32 161111, label %15
    i32 166100, label %16
    i32 166200, label %16
    i32 166101, label %17
    i32 166201, label %17
    i32 165100, label %18
    i32 165200, label %18
    i32 165101, label %19
    i32 165201, label %19
  ]

10:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %27

11:                                               ; preds = %2
  br label %27

12:                                               ; preds = %2, %2
  br label %27

13:                                               ; preds = %2
  br label %27

14:                                               ; preds = %2
  br label %27

15:                                               ; preds = %2
  br label %27

16:                                               ; preds = %2, %2
  br label %27

17:                                               ; preds = %2, %2
  br label %27

18:                                               ; preds = %2, %2
  br label %27

19:                                               ; preds = %2, %2
  br label %27

20:                                               ; preds = %2
  %21 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %22 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10
  %28 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %29 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %32)
  ret void
}

declare dso_local i32 @tveeprom_hauppauge_analog(%struct.tveeprom*, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
