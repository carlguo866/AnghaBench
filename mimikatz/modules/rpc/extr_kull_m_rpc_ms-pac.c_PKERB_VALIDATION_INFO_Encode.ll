; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/rpc/extr_kull_m_rpc_ms-pac.c_PKERB_VALIDATION_INFO_Encode.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/rpc/extr_kull_m_rpc_ms-pac.c_PKERB_VALIDATION_INFO_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@__MIDL_TypePicklingInfo = common dso_local global i32 0, align 4
@msKrbPac_StubDesc = common dso_local global i32 0, align 4
@ms_pac__MIDL_TypeFormatString = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@_ms_pac_PKERB_VALIDATION_INFO_idx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PKERB_VALIDATION_INFO_Encode(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ms_pac__MIDL_TypeFormatString, i32 0, i32 0), align 8
  %7 = load i64, i64* @_ms_pac_PKERB_VALIDATION_INFO_idx, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = ptrtoint i32* %8 to i32
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @NdrMesTypeEncode2(i32 %5, i32 ptrtoint (i32* @__MIDL_TypePicklingInfo to i32), i32* @msKrbPac_StubDesc, i32 %9, i32* %10)
  ret void
}

declare dso_local i32 @NdrMesTypeEncode2(i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
