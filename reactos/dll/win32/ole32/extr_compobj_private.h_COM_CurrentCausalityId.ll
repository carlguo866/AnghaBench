; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj_private.h_COM_CurrentCausalityId.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj_private.h_COM_CurrentCausalityId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oletls = type { i32 }

@GUID_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @COM_CurrentCausalityId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COM_CurrentCausalityId() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.oletls*, align 8
  %3 = call %struct.oletls* (...) @COM_CurrentInfo()
  store %struct.oletls* %3, %struct.oletls** %2, align 8
  %4 = load %struct.oletls*, %struct.oletls** %2, align 8
  %5 = icmp ne %struct.oletls* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @GUID_NULL, align 4
  store i32 %7, i32* %1, align 4
  br label %21

8:                                                ; preds = %0
  %9 = load %struct.oletls*, %struct.oletls** %2, align 8
  %10 = getelementptr inbounds %struct.oletls, %struct.oletls* %9, i32 0, i32 0
  %11 = call i64 @IsEqualGUID(i32* %10, i32* @GUID_NULL)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.oletls*, %struct.oletls** %2, align 8
  %15 = getelementptr inbounds %struct.oletls, %struct.oletls* %14, i32 0, i32 0
  %16 = call i32 @CoCreateGuid(i32* %15)
  br label %17

17:                                               ; preds = %13, %8
  %18 = load %struct.oletls*, %struct.oletls** %2, align 8
  %19 = getelementptr inbounds %struct.oletls, %struct.oletls* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %17, %6
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local %struct.oletls* @COM_CurrentInfo(...) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @CoCreateGuid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
