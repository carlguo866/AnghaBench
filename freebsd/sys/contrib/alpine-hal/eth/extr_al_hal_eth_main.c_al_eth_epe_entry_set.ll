; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_epe_entry_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_epe_entry_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.al_eth_epe_p_reg_entry = type { i64, i64, i64 }
%struct.al_eth_epe_control_entry = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_hal_eth_adapter*, i64, %struct.al_eth_epe_p_reg_entry*, %struct.al_eth_epe_control_entry*)* @al_eth_epe_entry_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_epe_entry_set(%struct.al_hal_eth_adapter* %0, i64 %1, %struct.al_eth_epe_p_reg_entry* %2, %struct.al_eth_epe_control_entry* %3) #0 {
  %5 = alloca %struct.al_hal_eth_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.al_eth_epe_p_reg_entry*, align 8
  %8 = alloca %struct.al_eth_epe_control_entry*, align 8
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.al_eth_epe_p_reg_entry* %2, %struct.al_eth_epe_p_reg_entry** %7, align 8
  store %struct.al_eth_epe_control_entry* %3, %struct.al_eth_epe_control_entry** %8, align 8
  %9 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load %struct.al_eth_epe_p_reg_entry*, %struct.al_eth_epe_p_reg_entry** %7, align 8
  %18 = getelementptr inbounds %struct.al_eth_epe_p_reg_entry, %struct.al_eth_epe_p_reg_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @al_reg_write32(i32* %16, i64 %19)
  %21 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.al_eth_epe_p_reg_entry*, %struct.al_eth_epe_p_reg_entry** %7, align 8
  %30 = getelementptr inbounds %struct.al_eth_epe_p_reg_entry, %struct.al_eth_epe_p_reg_entry* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @al_reg_write32(i32* %28, i64 %31)
  %33 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.al_eth_epe_p_reg_entry*, %struct.al_eth_epe_p_reg_entry** %7, align 8
  %42 = getelementptr inbounds %struct.al_eth_epe_p_reg_entry, %struct.al_eth_epe_p_reg_entry* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @al_reg_write32(i32* %40, i64 %43)
  %45 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load %struct.al_eth_epe_p_reg_entry*, %struct.al_eth_epe_p_reg_entry** %7, align 8
  %54 = getelementptr inbounds %struct.al_eth_epe_p_reg_entry, %struct.al_eth_epe_p_reg_entry* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @al_reg_write32(i32* %52, i64 %55)
  %57 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %58 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load %struct.al_eth_epe_p_reg_entry*, %struct.al_eth_epe_p_reg_entry** %7, align 8
  %66 = getelementptr inbounds %struct.al_eth_epe_p_reg_entry, %struct.al_eth_epe_p_reg_entry* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @al_reg_write32(i32* %64, i64 %67)
  %69 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %70 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.al_eth_epe_p_reg_entry*, %struct.al_eth_epe_p_reg_entry** %7, align 8
  %78 = getelementptr inbounds %struct.al_eth_epe_p_reg_entry, %struct.al_eth_epe_p_reg_entry* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @al_reg_write32(i32* %76, i64 %79)
  %81 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %82 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 6
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @al_reg_write32(i32* %87, i64 %88)
  %90 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %91 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 5
  %97 = load %struct.al_eth_epe_control_entry*, %struct.al_eth_epe_control_entry** %8, align 8
  %98 = getelementptr inbounds %struct.al_eth_epe_control_entry, %struct.al_eth_epe_control_entry* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 5
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @al_reg_write32(i32* %96, i64 %101)
  %103 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %104 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 4
  %110 = load %struct.al_eth_epe_control_entry*, %struct.al_eth_epe_control_entry** %8, align 8
  %111 = getelementptr inbounds %struct.al_eth_epe_control_entry, %struct.al_eth_epe_control_entry* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @al_reg_write32(i32* %109, i64 %114)
  %116 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %117 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load %struct.al_eth_epe_control_entry*, %struct.al_eth_epe_control_entry** %8, align 8
  %124 = getelementptr inbounds %struct.al_eth_epe_control_entry, %struct.al_eth_epe_control_entry* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 2
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @al_reg_write32(i32* %122, i64 %127)
  %129 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %130 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load %struct.al_eth_epe_control_entry*, %struct.al_eth_epe_control_entry** %8, align 8
  %137 = getelementptr inbounds %struct.al_eth_epe_control_entry, %struct.al_eth_epe_control_entry* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 3
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @al_reg_write32(i32* %135, i64 %140)
  %142 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %143 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %142, i32 0, i32 0
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load %struct.al_eth_epe_control_entry*, %struct.al_eth_epe_control_entry** %8, align 8
  %150 = getelementptr inbounds %struct.al_eth_epe_control_entry, %struct.al_eth_epe_control_entry* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 4
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @al_reg_write32(i32* %148, i64 %153)
  %155 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %156 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %155, i32 0, i32 0
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load %struct.al_eth_epe_control_entry*, %struct.al_eth_epe_control_entry** %8, align 8
  %163 = getelementptr inbounds %struct.al_eth_epe_control_entry, %struct.al_eth_epe_control_entry* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @al_reg_write32(i32* %161, i64 %166)
  %168 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %169 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %168, i32 0, i32 0
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i64 1
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 6
  %175 = load i64, i64* %6, align 8
  %176 = call i32 @al_reg_write32(i32* %174, i64 %175)
  %177 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %178 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %177, i32 0, i32 0
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i64 1
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 5
  %184 = load %struct.al_eth_epe_control_entry*, %struct.al_eth_epe_control_entry** %8, align 8
  %185 = getelementptr inbounds %struct.al_eth_epe_control_entry, %struct.al_eth_epe_control_entry* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 5
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @al_reg_write32(i32* %183, i64 %188)
  %190 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %191 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %190, i32 0, i32 0
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i64 1
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 4
  %197 = load %struct.al_eth_epe_control_entry*, %struct.al_eth_epe_control_entry** %8, align 8
  %198 = getelementptr inbounds %struct.al_eth_epe_control_entry, %struct.al_eth_epe_control_entry* %197, i32 0, i32 0
  %199 = load i64*, i64** %198, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 1
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @al_reg_write32(i32* %196, i64 %201)
  %203 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %204 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %203, i32 0, i32 0
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i64 1
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 3
  %210 = load %struct.al_eth_epe_control_entry*, %struct.al_eth_epe_control_entry** %8, align 8
  %211 = getelementptr inbounds %struct.al_eth_epe_control_entry, %struct.al_eth_epe_control_entry* %210, i32 0, i32 0
  %212 = load i64*, i64** %211, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 2
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @al_reg_write32(i32* %209, i64 %214)
  %216 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %217 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %216, i32 0, i32 0
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i64 1
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 2
  %223 = load %struct.al_eth_epe_control_entry*, %struct.al_eth_epe_control_entry** %8, align 8
  %224 = getelementptr inbounds %struct.al_eth_epe_control_entry, %struct.al_eth_epe_control_entry* %223, i32 0, i32 0
  %225 = load i64*, i64** %224, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 3
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @al_reg_write32(i32* %222, i64 %227)
  %229 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %230 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %229, i32 0, i32 0
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i64 1
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = load %struct.al_eth_epe_control_entry*, %struct.al_eth_epe_control_entry** %8, align 8
  %237 = getelementptr inbounds %struct.al_eth_epe_control_entry, %struct.al_eth_epe_control_entry* %236, i32 0, i32 0
  %238 = load i64*, i64** %237, align 8
  %239 = getelementptr inbounds i64, i64* %238, i64 4
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @al_reg_write32(i32* %235, i64 %240)
  %242 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %5, align 8
  %243 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %242, i32 0, i32 0
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i64 1
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 0
  %249 = load %struct.al_eth_epe_control_entry*, %struct.al_eth_epe_control_entry** %8, align 8
  %250 = getelementptr inbounds %struct.al_eth_epe_control_entry, %struct.al_eth_epe_control_entry* %249, i32 0, i32 0
  %251 = load i64*, i64** %250, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 0
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @al_reg_write32(i32* %248, i64 %253)
  ret void
}

declare dso_local i32 @al_reg_write32(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
