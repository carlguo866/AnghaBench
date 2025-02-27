; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_C_FindObjectsFinal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_C_FindObjectsFinal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session_state = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"FindObjectsFinal\0A\00", align 1
@CKR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @C_FindObjectsFinal(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.session_state*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @INIT_CONTEXT()
  %5 = call i32 @st_logf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @VERIFY_SESSION_HANDLE(i32 %6, %struct.session_state** %3)
  %8 = load %struct.session_state*, %struct.session_state** %3, align 8
  %9 = call i32 @find_object_final(%struct.session_state* %8)
  %10 = load i32, i32* @CKR_OK, align 4
  ret i32 %10
}

declare dso_local i32 @INIT_CONTEXT(...) #1

declare dso_local i32 @st_logf(i8*) #1

declare dso_local i32 @VERIFY_SESSION_HANDLE(i32, %struct.session_state**) #1

declare dso_local i32 @find_object_final(%struct.session_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
