; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/Util/7z/extr_7zMain.c_PrintString.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/Util/7z/extr_7zMain.c_PrintString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@CP_OEMCP = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i64 0, align 8
@g_Alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @PrintString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @PrintString(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = call i32 @Buf_Init(%struct.TYPE_5__* %3)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @CP_OEMCP, align 4
  %8 = call i64 @Utf16_To_Char(%struct.TYPE_5__* %3, i32* %6, i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @SZ_OK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @Print(i8* %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = call i32 @Buf_Free(%struct.TYPE_5__* %3, i32* @g_Alloc)
  %19 = load i64, i64* %4, align 8
  ret i64 %19
}

declare dso_local i32 @Buf_Init(%struct.TYPE_5__*) #1

declare dso_local i64 @Utf16_To_Char(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @Print(i8*) #1

declare dso_local i32 @Buf_Free(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
