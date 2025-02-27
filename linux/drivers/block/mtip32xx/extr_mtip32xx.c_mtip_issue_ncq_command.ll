; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_issue_ncq_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_issue_ncq_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtip_port*, i32)* @mtip_issue_ncq_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_issue_ncq_command(%struct.mtip_port* %0, i32 %1) #0 {
  %3 = alloca %struct.mtip_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtip_port* %0, %struct.mtip_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = ashr i32 %6, 5
  store i32 %7, i32* %5, align 4
  %8 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %9 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @MTIP_TAG_BIT(i32 %15)
  %17 = shl i32 1, %16
  %18 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %19 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @MTIP_TAG_INDEX(i32 %21)
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @writel(i32 %17, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @MTIP_TAG_BIT(i32 %26)
  %28 = shl i32 1, %27
  %29 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %30 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @MTIP_TAG_INDEX(i32 %32)
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @writel(i32 %28, i32 %35)
  %37 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %38 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @spin_unlock(i32* %42)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @MTIP_TAG_BIT(i32) #1

declare dso_local i64 @MTIP_TAG_INDEX(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
