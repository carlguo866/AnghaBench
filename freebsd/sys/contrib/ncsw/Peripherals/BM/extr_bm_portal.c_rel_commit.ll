; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_portal.c_rel_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_portal.c_rel_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@BM_RCR_RING = common dso_local global i32 0, align 4
@BM_RCR_VERB_CMD_BPID_SINGLE = common dso_local global i32 0, align 4
@BM_RCR_VERB_BUFCOUNT_MASK = common dso_local global i32 0, align 4
@BMAN_RELEASE_FLAG_WAIT_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32)* @rel_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rel_commit(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = load i32, i32* @BM_RCR_RING, align 4
  %10 = load i32, i32* @BM_RCR_VERB_CMD_BPID_SINGLE, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @BM_RCR_VERB_BUFCOUNT_MASK, align 4
  %13 = and i32 %11, %12
  %14 = or i32 %10, %13
  %15 = call i32 @BmCommit(%struct.TYPE_7__* %8, i32 %9, i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @BMAN_RELEASE_FLAG_WAIT_SYNC, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @BMAN_RELEASE_FLAG_WAIT_SYNC, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = call i32 @rel_set_thresh(%struct.TYPE_7__* %26, i32 1)
  br label %28

28:                                               ; preds = %25, %3
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = call i32 @PUNLOCK(%struct.TYPE_7__* %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @BMAN_RELEASE_FLAG_WAIT_SYNC, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @BMAN_RELEASE_FLAG_WAIT_SYNC, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %41

37:                                               ; preds = %28
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @rel_completed(%struct.TYPE_7__* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %36
  ret void
}

declare dso_local i32 @BmCommit(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @rel_set_thresh(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @PUNLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @rel_completed(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
