; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_activex.c_test_nooleobj_ax.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_activex.c_test_nooleobj_ax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_DISPONLY = common dso_local global i32 0, align 4
@CreateInstance = common dso_local global i32 0, align 4
@Invoke_READYSTATE = common dso_local global i32 0, align 4
@Invoke_SECURITYCTX = common dso_local global i32 0, align 4
@Invoke_SCRIPTCALL = common dso_local global i32 0, align 4
@object_ax_str = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_nooleobj_ax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_nooleobj_ax() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @TEST_DISPONLY, align 4
  %3 = call i32 @init_test(i32 %2)
  %4 = load i32, i32* @CreateInstance, align 4
  %5 = call i32 @SET_EXPECT(i32 %4)
  %6 = load i32, i32* @Invoke_READYSTATE, align 4
  %7 = call i32 @SET_EXPECT(i32 %6)
  %8 = load i32, i32* @Invoke_SECURITYCTX, align 4
  %9 = call i32 @SET_EXPECT(i32 %8)
  %10 = load i32, i32* @Invoke_SCRIPTCALL, align 4
  %11 = call i32 @SET_EXPECT(i32 %10)
  %12 = load i32, i32* @object_ax_str, align 4
  %13 = call i32* @create_doc(i32 %12)
  store i32* %13, i32** %1, align 8
  %14 = load i32, i32* @CreateInstance, align 4
  %15 = call i32 @CHECK_CALLED(i32 %14)
  %16 = load i32, i32* @Invoke_READYSTATE, align 4
  %17 = call i32 @CHECK_CALLED(i32 %16)
  %18 = load i32, i32* @Invoke_SECURITYCTX, align 4
  %19 = call i32 @CHECK_CALLED(i32 %18)
  %20 = load i32, i32* @Invoke_SCRIPTCALL, align 4
  %21 = call i32 @CHECK_CALLED(i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @release_doc(i32* %22)
  ret void
}

declare dso_local i32 @init_test(i32) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i32* @create_doc(i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @release_doc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
