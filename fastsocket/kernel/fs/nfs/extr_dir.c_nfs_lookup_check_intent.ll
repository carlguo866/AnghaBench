; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_lookup_check_intent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_lookup_check_intent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32 }

@LOOKUP_CONTINUE = common dso_local global i32 0, align 4
@LOOKUP_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*, i32)* @nfs_lookup_check_intent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_lookup_check_intent(%struct.nameidata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %7 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LOOKUP_CONTINUE, align 4
  %10 = load i32, i32* @LOOKUP_PARENT, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %17 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %15, %14
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
