; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-pio-blacklist.c_ide_scan_pio_blacklist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-pio-blacklist.c_ide_scan_pio_blacklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_pio_info = type { i32, i32* }

@ide_pio_blacklist = common dso_local global %struct.ide_pio_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_scan_pio_blacklist(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ide_pio_info*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.ide_pio_info*, %struct.ide_pio_info** @ide_pio_blacklist, align 8
  store %struct.ide_pio_info* %5, %struct.ide_pio_info** %4, align 8
  br label %6

6:                                                ; preds = %27, %1
  %7 = load %struct.ide_pio_info*, %struct.ide_pio_info** %4, align 8
  %8 = getelementptr inbounds %struct.ide_pio_info, %struct.ide_pio_info* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %6
  %12 = load %struct.ide_pio_info*, %struct.ide_pio_info** %4, align 8
  %13 = getelementptr inbounds %struct.ide_pio_info, %struct.ide_pio_info* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.ide_pio_info*, %struct.ide_pio_info** %4, align 8
  %17 = getelementptr inbounds %struct.ide_pio_info, %struct.ide_pio_info* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @strlen(i32* %18)
  %20 = call i64 @strncmp(i32* %14, i8* %15, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = load %struct.ide_pio_info*, %struct.ide_pio_info** %4, align 8
  %24 = getelementptr inbounds %struct.ide_pio_info, %struct.ide_pio_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %2, align 4
  br label %31

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.ide_pio_info*, %struct.ide_pio_info** %4, align 8
  %29 = getelementptr inbounds %struct.ide_pio_info, %struct.ide_pio_info* %28, i32 1
  store %struct.ide_pio_info* %29, %struct.ide_pio_info** %4, align 8
  br label %6

30:                                               ; preds = %6
  store i32 -1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %22
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
