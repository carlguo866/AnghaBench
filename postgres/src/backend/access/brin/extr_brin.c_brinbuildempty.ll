; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin.c_brinbuildempty.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin.c_brinbuildempty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INIT_FORKNUM = common dso_local global i32 0, align 4
@P_NEW = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@BRIN_CURRENT_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brinbuildempty(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @INIT_FORKNUM, align 4
  %6 = load i32, i32* @P_NEW, align 4
  %7 = load i32, i32* @RBM_NORMAL, align 4
  %8 = call i32 @ReadBufferExtended(i32 %4, i32 %5, i32 %6, i32 %7, i32* null)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %11 = call i32 @LockBuffer(i32 %9, i32 %10)
  %12 = call i32 (...) @START_CRIT_SECTION()
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @BufferGetPage(i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @BrinGetPagesPerRange(i32 %15)
  %17 = load i32, i32* @BRIN_CURRENT_VERSION, align 4
  %18 = call i32 @brin_metapage_init(i32 %14, i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @MarkBufferDirty(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @log_newpage_buffer(i32 %21, i32 1)
  %23 = call i32 (...) @END_CRIT_SECTION()
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @UnlockReleaseBuffer(i32 %24)
  ret void
}

declare dso_local i32 @ReadBufferExtended(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @brin_metapage_init(i32, i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @BrinGetPagesPerRange(i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @log_newpage_buffer(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
