; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap_pac.c_eap_teap_pac_get_a_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap_pac.c_eap_teap_pac_get_a_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_teap_pac = type { i32, i32, i32, i8*, i8*, i32* }

@PAC_TYPE_A_ID = common dso_local global i32 0, align 4
@PAC_TYPE_A_ID_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_teap_pac*)* @eap_teap_pac_get_a_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_teap_pac_get_a_id(%struct.eap_teap_pac* %0) #0 {
  %2 = alloca %struct.eap_teap_pac*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.eap_teap_pac* %0, %struct.eap_teap_pac** %2, align 8
  %7 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %2, align 8
  %8 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %2, align 8
  %12 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %10, i64 %14
  store i32* %15, i32** %4, align 8
  br label %16

16:                                               ; preds = %89, %1
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = ptrtoint i32* %17 to i64
  %20 = ptrtoint i32* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 4
  %23 = icmp sgt i64 %22, 4
  br i1 %23, label %24, label %94

24:                                               ; preds = %16
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @WPA_GET_BE16(i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @WPA_GET_BE16(i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32* %32, i32** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = ptrtoint i32* %34 to i64
  %37 = ptrtoint i32* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = icmp ugt i32 %33, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  br label %94

43:                                               ; preds = %24
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @PAC_TYPE_A_ID, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %2, align 8
  %49 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %48, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @os_free(i8* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i8* @os_memdup(i32* %52, i32 %53)
  %55 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %2, align 8
  %56 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %2, align 8
  %58 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %47
  br label %94

62:                                               ; preds = %47
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %2, align 8
  %65 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %43
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @PAC_TYPE_A_ID_INFO, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %66
  %71 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %2, align 8
  %72 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @os_free(i8* %73)
  %75 = load i32*, i32** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i8* @os_memdup(i32* %75, i32 %76)
  %78 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %2, align 8
  %79 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %2, align 8
  %81 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %70
  br label %94

85:                                               ; preds = %70
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %2, align 8
  %88 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %85, %66
  %90 = load i32, i32* %6, align 4
  %91 = load i32*, i32** %3, align 8
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %3, align 8
  br label %16

94:                                               ; preds = %84, %61, %42, %16
  ret void
}

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @os_memdup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
