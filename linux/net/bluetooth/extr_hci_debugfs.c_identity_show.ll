; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_debugfs.c_identity_show.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_debugfs.c_identity_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.hci_dev* }
%struct.hci_dev = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"%pMR (type %u) %*phN %pMR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @identity_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @identity_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  store %struct.hci_dev* %10, %struct.hci_dev** %5, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %12 = call i32 @hci_dev_lock(%struct.hci_dev* %11)
  %13 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %14 = call i32 @hci_copy_identity_address(%struct.hci_dev* %13, i32* %6, i32* %7)
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %21 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %20, i32 0, i32 0
  %22 = call i32 @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %6, i32 %16, i32 16, i32 %19, i32* %21)
  %23 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %24 = call i32 @hci_dev_unlock(%struct.hci_dev* %23)
  ret i32 0
}

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_copy_identity_address(%struct.hci_dev*, i32*, i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
